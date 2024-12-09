import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminCharacterRecord extends FirestoreRecord {
  AdminCharacterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "character_id" field.
  String? _characterId;
  String get characterId => _characterId ?? '';
  bool hasCharacterId() => _characterId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "likes_count" field.
  int? _likesCount;
  int get likesCount => _likesCount ?? 0;
  bool hasLikesCount() => _likesCount != null;

  // "first_message" field.
  String? _firstMessage;
  String get firstMessage => _firstMessage ?? '';
  bool hasFirstMessage() => _firstMessage != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "last_interaction" field.
  DateTime? _lastInteraction;
  DateTime? get lastInteraction => _lastInteraction;
  bool hasLastInteraction() => _lastInteraction != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "image_style" field.
  String? _imageStyle;
  String get imageStyle => _imageStyle ?? '';
  bool hasImageStyle() => _imageStyle != null;

  // "reference_image" field.
  String? _referenceImage;
  String get referenceImage => _referenceImage ?? '';
  bool hasReferenceImage() => _referenceImage != null;

  // "created_images" field.
  List<String>? _createdImages;
  List<String> get createdImages => _createdImages ?? const [];
  bool hasCreatedImages() => _createdImages != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "appereanceAdmin" field.
  String? _appereanceAdmin;
  String get appereanceAdmin => _appereanceAdmin ?? '';
  bool hasAppereanceAdmin() => _appereanceAdmin != null;

  // "characterAdmin" field.
  String? _characterAdmin;
  String get characterAdmin => _characterAdmin ?? '';
  bool hasCharacterAdmin() => _characterAdmin != null;

  // "descriptionDisplay" field.
  String? _descriptionDisplay;
  String get descriptionDisplay => _descriptionDisplay ?? '';
  bool hasDescriptionDisplay() => _descriptionDisplay != null;

  // "characterDisplay" field.
  String? _characterDisplay;
  String get characterDisplay => _characterDisplay ?? '';
  bool hasCharacterDisplay() => _characterDisplay != null;

  // "personalityDisplay" field.
  String? _personalityDisplay;
  String get personalityDisplay => _personalityDisplay ?? '';
  bool hasPersonalityDisplay() => _personalityDisplay != null;

  // "intimateBehaviourDisplay" field.
  String? _intimateBehaviourDisplay;
  String get intimateBehaviourDisplay => _intimateBehaviourDisplay ?? '';
  bool hasIntimateBehaviourDisplay() => _intimateBehaviourDisplay != null;

  void _initializeFields() {
    _characterId = snapshotData['character_id'] as String?;
    _name = snapshotData['name'] as String?;
    _likesCount = castToType<int>(snapshotData['likes_count']);
    _firstMessage = snapshotData['first_message'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _lastInteraction = snapshotData['last_interaction'] as DateTime?;
    _language = snapshotData['language'] as String?;
    _gender = snapshotData['gender'] as String?;
    _imageStyle = snapshotData['image_style'] as String?;
    _referenceImage = snapshotData['reference_image'] as String?;
    _createdImages = getDataList(snapshotData['created_images']);
    _age = snapshotData['age'] as String?;
    _appereanceAdmin = snapshotData['appereanceAdmin'] as String?;
    _characterAdmin = snapshotData['characterAdmin'] as String?;
    _descriptionDisplay = snapshotData['descriptionDisplay'] as String?;
    _characterDisplay = snapshotData['characterDisplay'] as String?;
    _personalityDisplay = snapshotData['personalityDisplay'] as String?;
    _intimateBehaviourDisplay =
        snapshotData['intimateBehaviourDisplay'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminCharacter');

  static Stream<AdminCharacterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminCharacterRecord.fromSnapshot(s));

  static Future<AdminCharacterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminCharacterRecord.fromSnapshot(s));

  static AdminCharacterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminCharacterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminCharacterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminCharacterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminCharacterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminCharacterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminCharacterRecordData({
  String? characterId,
  String? name,
  int? likesCount,
  String? firstMessage,
  DateTime? createdAt,
  DateTime? lastInteraction,
  String? language,
  String? gender,
  String? imageStyle,
  String? referenceImage,
  String? age,
  String? appereanceAdmin,
  String? characterAdmin,
  String? descriptionDisplay,
  String? characterDisplay,
  String? personalityDisplay,
  String? intimateBehaviourDisplay,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'character_id': characterId,
      'name': name,
      'likes_count': likesCount,
      'first_message': firstMessage,
      'created_at': createdAt,
      'last_interaction': lastInteraction,
      'language': language,
      'gender': gender,
      'image_style': imageStyle,
      'reference_image': referenceImage,
      'age': age,
      'appereanceAdmin': appereanceAdmin,
      'characterAdmin': characterAdmin,
      'descriptionDisplay': descriptionDisplay,
      'characterDisplay': characterDisplay,
      'personalityDisplay': personalityDisplay,
      'intimateBehaviourDisplay': intimateBehaviourDisplay,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminCharacterRecordDocumentEquality
    implements Equality<AdminCharacterRecord> {
  const AdminCharacterRecordDocumentEquality();

  @override
  bool equals(AdminCharacterRecord? e1, AdminCharacterRecord? e2) {
    const listEquality = ListEquality();
    return e1?.characterId == e2?.characterId &&
        e1?.name == e2?.name &&
        e1?.likesCount == e2?.likesCount &&
        e1?.firstMessage == e2?.firstMessage &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastInteraction == e2?.lastInteraction &&
        e1?.language == e2?.language &&
        e1?.gender == e2?.gender &&
        e1?.imageStyle == e2?.imageStyle &&
        e1?.referenceImage == e2?.referenceImage &&
        listEquality.equals(e1?.createdImages, e2?.createdImages) &&
        e1?.age == e2?.age &&
        e1?.appereanceAdmin == e2?.appereanceAdmin &&
        e1?.characterAdmin == e2?.characterAdmin &&
        e1?.descriptionDisplay == e2?.descriptionDisplay &&
        e1?.characterDisplay == e2?.characterDisplay &&
        e1?.personalityDisplay == e2?.personalityDisplay &&
        e1?.intimateBehaviourDisplay == e2?.intimateBehaviourDisplay;
  }

  @override
  int hash(AdminCharacterRecord? e) => const ListEquality().hash([
        e?.characterId,
        e?.name,
        e?.likesCount,
        e?.firstMessage,
        e?.createdAt,
        e?.lastInteraction,
        e?.language,
        e?.gender,
        e?.imageStyle,
        e?.referenceImage,
        e?.createdImages,
        e?.age,
        e?.appereanceAdmin,
        e?.characterAdmin,
        e?.descriptionDisplay,
        e?.characterDisplay,
        e?.personalityDisplay,
        e?.intimateBehaviourDisplay
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminCharacterRecord;
}
