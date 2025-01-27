import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "messages_sent_count" field.
  int? _messagesSentCount;
  int get messagesSentCount => _messagesSentCount ?? 0;
  bool hasMessagesSentCount() => _messagesSentCount != null;

  // "characters_created_count" field.
  int? _charactersCreatedCount;
  int get charactersCreatedCount => _charactersCreatedCount ?? 0;
  bool hasCharactersCreatedCount() => _charactersCreatedCount != null;

  // "is_pay_per_use" field.
  bool? _isPayPerUse;
  bool get isPayPerUse => _isPayPerUse ?? false;
  bool hasIsPayPerUse() => _isPayPerUse != null;

  // "characters_liked" field.
  List<DocumentReference>? _charactersLiked;
  List<DocumentReference> get charactersLiked => _charactersLiked ?? const [];
  bool hasCharactersLiked() => _charactersLiked != null;

  // "planId" field.
  String? _planId;
  String get planId => _planId ?? '';
  bool hasPlanId() => _planId != null;

  // "is_premium" field.
  bool? _isPremium;
  bool get isPremium => _isPremium ?? false;
  bool hasIsPremium() => _isPremium != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "emailVerifiziert" field.
  bool? _emailVerifiziert;
  bool get emailVerifiziert => _emailVerifiziert ?? false;
  bool hasEmailVerifiziert() => _emailVerifiziert != null;

  // "subscription_id" field.
  String? _subscriptionId;
  String get subscriptionId => _subscriptionId ?? '';
  bool hasSubscriptionId() => _subscriptionId != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _messagesSentCount = castToType<int>(snapshotData['messages_sent_count']);
    _charactersCreatedCount =
        castToType<int>(snapshotData['characters_created_count']);
    _isPayPerUse = snapshotData['is_pay_per_use'] as bool?;
    _charactersLiked = getDataList(snapshotData['characters_liked']);
    _planId = snapshotData['planId'] as String?;
    _isPremium = snapshotData['is_premium'] as bool?;
    _uid = snapshotData['uid'] as String?;
    _emailVerifiziert = snapshotData['emailVerifiziert'] as bool?;
    _subscriptionId = snapshotData['subscription_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActiveTime,
  int? messagesSentCount,
  int? charactersCreatedCount,
  bool? isPayPerUse,
  String? planId,
  bool? isPremium,
  String? uid,
  bool? emailVerifiziert,
  String? subscriptionId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'last_active_time': lastActiveTime,
      'messages_sent_count': messagesSentCount,
      'characters_created_count': charactersCreatedCount,
      'is_pay_per_use': isPayPerUse,
      'planId': planId,
      'is_premium': isPremium,
      'uid': uid,
      'emailVerifiziert': emailVerifiziert,
      'subscription_id': subscriptionId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.messagesSentCount == e2?.messagesSentCount &&
        e1?.charactersCreatedCount == e2?.charactersCreatedCount &&
        e1?.isPayPerUse == e2?.isPayPerUse &&
        listEquality.equals(e1?.charactersLiked, e2?.charactersLiked) &&
        e1?.planId == e2?.planId &&
        e1?.isPremium == e2?.isPremium &&
        e1?.uid == e2?.uid &&
        e1?.emailVerifiziert == e2?.emailVerifiziert &&
        e1?.subscriptionId == e2?.subscriptionId;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActiveTime,
        e?.messagesSentCount,
        e?.charactersCreatedCount,
        e?.isPayPerUse,
        e?.charactersLiked,
        e?.planId,
        e?.isPremium,
        e?.uid,
        e?.emailVerifiziert,
        e?.subscriptionId
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
