import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterLikesRecord extends FirestoreRecord {
  CharacterLikesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "characterId" field.
  String? _characterId;
  String get characterId => _characterId ?? '';
  bool hasCharacterId() => _characterId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _characterId = snapshotData['characterId'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('characterLikes');

  static Stream<CharacterLikesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharacterLikesRecord.fromSnapshot(s));

  static Future<CharacterLikesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CharacterLikesRecord.fromSnapshot(s));

  static CharacterLikesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharacterLikesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharacterLikesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharacterLikesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharacterLikesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharacterLikesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharacterLikesRecordData({
  String? userId,
  String? characterId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'characterId': characterId,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CharacterLikesRecordDocumentEquality
    implements Equality<CharacterLikesRecord> {
  const CharacterLikesRecordDocumentEquality();

  @override
  bool equals(CharacterLikesRecord? e1, CharacterLikesRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.characterId == e2?.characterId &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CharacterLikesRecord? e) =>
      const ListEquality().hash([e?.userId, e?.characterId, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is CharacterLikesRecord;
}
