import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharactersMainRecord extends FirestoreRecord {
  CharactersMainRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "is_admin_created" field.
  bool? _isAdminCreated;
  bool get isAdminCreated => _isAdminCreated ?? false;
  bool hasIsAdminCreated() => _isAdminCreated != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "is_public" field.
  bool? _isPublic;
  bool get isPublic => _isPublic ?? false;
  bool hasIsPublic() => _isPublic != null;

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

  // "personality" field.
  CharacterPersonalityStruct? _personality;
  CharacterPersonalityStruct get personality =>
      _personality ?? CharacterPersonalityStruct();
  bool hasPersonality() => _personality != null;

  // "appearance" field.
  CharacterAppearanceStruct? _appearance;
  CharacterAppearanceStruct get appearance =>
      _appearance ?? CharacterAppearanceStruct();
  bool hasAppearance() => _appearance != null;

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "chats" field.
  DocumentReference? _chats;
  DocumentReference? get chats => _chats;
  bool hasChats() => _chats != null;

  void _initializeFields() {
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _isAdminCreated = snapshotData['is_admin_created'] as bool?;
    _name = snapshotData['name'] as String?;
    _isPublic = snapshotData['is_public'] as bool?;
    _likesCount = castToType<int>(snapshotData['likes_count']);
    _firstMessage = snapshotData['first_message'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _lastInteraction = snapshotData['last_interaction'] as DateTime?;
    _language = snapshotData['language'] as String?;
    _personality = snapshotData['personality'] is CharacterPersonalityStruct
        ? snapshotData['personality']
        : CharacterPersonalityStruct.maybeFromMap(snapshotData['personality']);
    _appearance = snapshotData['appearance'] is CharacterAppearanceStruct
        ? snapshotData['appearance']
        : CharacterAppearanceStruct.maybeFromMap(snapshotData['appearance']);
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
    _type = snapshotData['type'] as String?;
    _chats = snapshotData['chats'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('charactersMain');

  static Stream<CharactersMainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharactersMainRecord.fromSnapshot(s));

  static Future<CharactersMainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CharactersMainRecord.fromSnapshot(s));

  static CharactersMainRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharactersMainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharactersMainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharactersMainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharactersMainRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharactersMainRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharactersMainRecordData({
  DocumentReference? createdBy,
  bool? isAdminCreated,
  String? name,
  bool? isPublic,
  int? likesCount,
  String? firstMessage,
  DateTime? createdAt,
  DateTime? lastInteraction,
  String? language,
  CharacterPersonalityStruct? personality,
  CharacterAppearanceStruct? appearance,
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
  String? type,
  DocumentReference? chats,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_by': createdBy,
      'is_admin_created': isAdminCreated,
      'name': name,
      'is_public': isPublic,
      'likes_count': likesCount,
      'first_message': firstMessage,
      'created_at': createdAt,
      'last_interaction': lastInteraction,
      'language': language,
      'personality': CharacterPersonalityStruct().toMap(),
      'appearance': CharacterAppearanceStruct().toMap(),
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
      'type': type,
      'chats': chats,
    }.withoutNulls,
  );

  // Handle nested data for "personality" field.
  addCharacterPersonalityStructData(firestoreData, personality, 'personality');

  // Handle nested data for "appearance" field.
  addCharacterAppearanceStructData(firestoreData, appearance, 'appearance');

  return firestoreData;
}

class CharactersMainRecordDocumentEquality
    implements Equality<CharactersMainRecord> {
  const CharactersMainRecordDocumentEquality();

  @override
  bool equals(CharactersMainRecord? e1, CharactersMainRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdBy == e2?.createdBy &&
        e1?.isAdminCreated == e2?.isAdminCreated &&
        e1?.name == e2?.name &&
        e1?.isPublic == e2?.isPublic &&
        e1?.likesCount == e2?.likesCount &&
        e1?.firstMessage == e2?.firstMessage &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastInteraction == e2?.lastInteraction &&
        e1?.language == e2?.language &&
        e1?.personality == e2?.personality &&
        e1?.appearance == e2?.appearance &&
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
        e1?.intimateBehaviourDisplay == e2?.intimateBehaviourDisplay &&
        e1?.type == e2?.type &&
        e1?.chats == e2?.chats;
  }

  @override
  int hash(CharactersMainRecord? e) => const ListEquality().hash([
        e?.createdBy,
        e?.isAdminCreated,
        e?.name,
        e?.isPublic,
        e?.likesCount,
        e?.firstMessage,
        e?.createdAt,
        e?.lastInteraction,
        e?.language,
        e?.personality,
        e?.appearance,
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
        e?.intimateBehaviourDisplay,
        e?.type,
        e?.chats
      ]);

  @override
  bool isValidKey(Object? o) => o is CharactersMainRecord;
}
