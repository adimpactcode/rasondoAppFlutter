import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "payment_id" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "payment_methoc" field.
  String? _paymentMethoc;
  String get paymentMethoc => _paymentMethoc ?? '';
  bool hasPaymentMethoc() => _paymentMethoc != null;

  // "subscription_typ" field.
  String? _subscriptionTyp;
  String get subscriptionTyp => _subscriptionTyp ?? '';
  bool hasSubscriptionTyp() => _subscriptionTyp != null;

  // "is_successful" field.
  bool? _isSuccessful;
  bool get isSuccessful => _isSuccessful ?? false;
  bool hasIsSuccessful() => _isSuccessful != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _paymentId = snapshotData['payment_id'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _paymentMethoc = snapshotData['payment_methoc'] as String?;
    _subscriptionTyp = snapshotData['subscription_typ'] as String?;
    _isSuccessful = snapshotData['is_successful'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  String? paymentId,
  DocumentReference? userId,
  double? amount,
  String? paymentMethoc,
  String? subscriptionTyp,
  bool? isSuccessful,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'payment_id': paymentId,
      'user_id': userId,
      'amount': amount,
      'payment_methoc': paymentMethoc,
      'subscription_typ': subscriptionTyp,
      'is_successful': isSuccessful,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.paymentId == e2?.paymentId &&
        e1?.userId == e2?.userId &&
        e1?.amount == e2?.amount &&
        e1?.paymentMethoc == e2?.paymentMethoc &&
        e1?.subscriptionTyp == e2?.subscriptionTyp &&
        e1?.isSuccessful == e2?.isSuccessful &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.paymentId,
        e?.userId,
        e?.amount,
        e?.paymentMethoc,
        e?.subscriptionTyp,
        e?.isSuccessful,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
