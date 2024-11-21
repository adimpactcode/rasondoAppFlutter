import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesRecord extends FirestoreRecord {
  ImagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image_id" field.
  String? _imageId;
  String get imageId => _imageId ?? '';
  bool hasImageId() => _imageId != null;

  // "character_id" field.
  DocumentReference? _characterId;
  DocumentReference? get characterId => _characterId;
  bool hasCharacterId() => _characterId != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  bool hasPrompt() => _prompt != null;

  // "is_public" field.
  bool? _isPublic;
  bool get isPublic => _isPublic ?? false;
  bool hasIsPublic() => _isPublic != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "is_reference_image" field.
  bool? _isReferenceImage;
  bool get isReferenceImage => _isReferenceImage ?? false;
  bool hasIsReferenceImage() => _isReferenceImage != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _imageId = snapshotData['image_id'] as String?;
    _characterId = snapshotData['character_id'] as DocumentReference?;
    _prompt = snapshotData['prompt'] as String?;
    _isPublic = snapshotData['is_public'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _isReferenceImage = snapshotData['is_reference_image'] as bool?;
    _imageUrl = snapshotData['image_url'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('images');

  static Stream<ImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagesRecord.fromSnapshot(s));

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagesRecord.fromSnapshot(s));

  static ImagesRecord fromSnapshot(DocumentSnapshot snapshot) => ImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagesRecordData({
  String? imageId,
  DocumentReference? characterId,
  String? prompt,
  bool? isPublic,
  DateTime? createdAt,
  bool? isReferenceImage,
  String? imageUrl,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image_id': imageId,
      'character_id': characterId,
      'prompt': prompt,
      'is_public': isPublic,
      'created_at': createdAt,
      'is_reference_image': isReferenceImage,
      'image_url': imageUrl,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagesRecordDocumentEquality implements Equality<ImagesRecord> {
  const ImagesRecordDocumentEquality();

  @override
  bool equals(ImagesRecord? e1, ImagesRecord? e2) {
    return e1?.imageId == e2?.imageId &&
        e1?.characterId == e2?.characterId &&
        e1?.prompt == e2?.prompt &&
        e1?.isPublic == e2?.isPublic &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isReferenceImage == e2?.isReferenceImage &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(ImagesRecord? e) => const ListEquality().hash([
        e?.imageId,
        e?.characterId,
        e?.prompt,
        e?.isPublic,
        e?.createdAt,
        e?.isReferenceImage,
        e?.imageUrl,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ImagesRecord;
}
