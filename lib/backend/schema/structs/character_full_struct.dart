// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterFullStruct extends FFFirebaseStruct {
  CharacterFullStruct({
    String? name,
    CharacterPersonalityStruct? personality,
    CharacterAppearanceStruct? appearance,
    bool? isPublic,
    String? gender,
    String? imageStyle,
    String? ethnicity,
    String? age,
    String? referenceImage,
    List<String>? createdImages,
    String? appereanceAdmin,
    String? characterAdmin,
    DocumentReference? userReference,
    String? descriptionDisplay,
    String? characterDisplay,
    String? personalityDisplay,
    String? intimateBehaviourDisplay,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _personality = personality,
        _appearance = appearance,
        _isPublic = isPublic,
        _gender = gender,
        _imageStyle = imageStyle,
        _ethnicity = ethnicity,
        _age = age,
        _referenceImage = referenceImage,
        _createdImages = createdImages,
        _appereanceAdmin = appereanceAdmin,
        _characterAdmin = characterAdmin,
        _userReference = userReference,
        _descriptionDisplay = descriptionDisplay,
        _characterDisplay = characterDisplay,
        _personalityDisplay = personalityDisplay,
        _intimateBehaviourDisplay = intimateBehaviourDisplay,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "personality" field.
  CharacterPersonalityStruct? _personality;
  CharacterPersonalityStruct get personality =>
      _personality ?? CharacterPersonalityStruct();
  set personality(CharacterPersonalityStruct? val) => _personality = val;

  void updatePersonality(Function(CharacterPersonalityStruct) updateFn) {
    updateFn(_personality ??= CharacterPersonalityStruct());
  }

  bool hasPersonality() => _personality != null;

  // "appearance" field.
  CharacterAppearanceStruct? _appearance;
  CharacterAppearanceStruct get appearance =>
      _appearance ?? CharacterAppearanceStruct();
  set appearance(CharacterAppearanceStruct? val) => _appearance = val;

  void updateAppearance(Function(CharacterAppearanceStruct) updateFn) {
    updateFn(_appearance ??= CharacterAppearanceStruct());
  }

  bool hasAppearance() => _appearance != null;

  // "is_public" field.
  bool? _isPublic;
  bool get isPublic => _isPublic ?? false;
  set isPublic(bool? val) => _isPublic = val;

  bool hasIsPublic() => _isPublic != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "image_style" field.
  String? _imageStyle;
  String get imageStyle => _imageStyle ?? '';
  set imageStyle(String? val) => _imageStyle = val;

  bool hasImageStyle() => _imageStyle != null;

  // "ethnicity" field.
  String? _ethnicity;
  String get ethnicity => _ethnicity ?? '';
  set ethnicity(String? val) => _ethnicity = val;

  bool hasEthnicity() => _ethnicity != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  set age(String? val) => _age = val;

  bool hasAge() => _age != null;

  // "reference_image" field.
  String? _referenceImage;
  String get referenceImage => _referenceImage ?? '';
  set referenceImage(String? val) => _referenceImage = val;

  bool hasReferenceImage() => _referenceImage != null;

  // "created_images" field.
  List<String>? _createdImages;
  List<String> get createdImages => _createdImages ?? const [];
  set createdImages(List<String>? val) => _createdImages = val;

  void updateCreatedImages(Function(List<String>) updateFn) {
    updateFn(_createdImages ??= []);
  }

  bool hasCreatedImages() => _createdImages != null;

  // "appereanceAdmin" field.
  String? _appereanceAdmin;
  String get appereanceAdmin => _appereanceAdmin ?? '';
  set appereanceAdmin(String? val) => _appereanceAdmin = val;

  bool hasAppereanceAdmin() => _appereanceAdmin != null;

  // "characterAdmin" field.
  String? _characterAdmin;
  String get characterAdmin => _characterAdmin ?? '';
  set characterAdmin(String? val) => _characterAdmin = val;

  bool hasCharacterAdmin() => _characterAdmin != null;

  // "userReference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  set userReference(DocumentReference? val) => _userReference = val;

  bool hasUserReference() => _userReference != null;

  // "descriptionDisplay" field.
  String? _descriptionDisplay;
  String get descriptionDisplay => _descriptionDisplay ?? '';
  set descriptionDisplay(String? val) => _descriptionDisplay = val;

  bool hasDescriptionDisplay() => _descriptionDisplay != null;

  // "characterDisplay" field.
  String? _characterDisplay;
  String get characterDisplay => _characterDisplay ?? '';
  set characterDisplay(String? val) => _characterDisplay = val;

  bool hasCharacterDisplay() => _characterDisplay != null;

  // "personalityDisplay" field.
  String? _personalityDisplay;
  String get personalityDisplay => _personalityDisplay ?? '';
  set personalityDisplay(String? val) => _personalityDisplay = val;

  bool hasPersonalityDisplay() => _personalityDisplay != null;

  // "intimateBehaviourDisplay" field.
  String? _intimateBehaviourDisplay;
  String get intimateBehaviourDisplay => _intimateBehaviourDisplay ?? '';
  set intimateBehaviourDisplay(String? val) => _intimateBehaviourDisplay = val;

  bool hasIntimateBehaviourDisplay() => _intimateBehaviourDisplay != null;

  static CharacterFullStruct fromMap(Map<String, dynamic> data) =>
      CharacterFullStruct(
        name: data['name'] as String?,
        personality:
            CharacterPersonalityStruct.maybeFromMap(data['personality']),
        appearance: CharacterAppearanceStruct.maybeFromMap(data['appearance']),
        isPublic: data['is_public'] as bool?,
        gender: data['gender'] as String?,
        imageStyle: data['image_style'] as String?,
        ethnicity: data['ethnicity'] as String?,
        age: data['age'] as String?,
        referenceImage: data['reference_image'] as String?,
        createdImages: getDataList(data['created_images']),
        appereanceAdmin: data['appereanceAdmin'] as String?,
        characterAdmin: data['characterAdmin'] as String?,
        userReference: data['userReference'] as DocumentReference?,
        descriptionDisplay: data['descriptionDisplay'] as String?,
        characterDisplay: data['characterDisplay'] as String?,
        personalityDisplay: data['personalityDisplay'] as String?,
        intimateBehaviourDisplay: data['intimateBehaviourDisplay'] as String?,
      );

  static CharacterFullStruct? maybeFromMap(dynamic data) => data is Map
      ? CharacterFullStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'personality': _personality?.toMap(),
        'appearance': _appearance?.toMap(),
        'is_public': _isPublic,
        'gender': _gender,
        'image_style': _imageStyle,
        'ethnicity': _ethnicity,
        'age': _age,
        'reference_image': _referenceImage,
        'created_images': _createdImages,
        'appereanceAdmin': _appereanceAdmin,
        'characterAdmin': _characterAdmin,
        'userReference': _userReference,
        'descriptionDisplay': _descriptionDisplay,
        'characterDisplay': _characterDisplay,
        'personalityDisplay': _personalityDisplay,
        'intimateBehaviourDisplay': _intimateBehaviourDisplay,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'personality': serializeParam(
          _personality,
          ParamType.DataStruct,
        ),
        'appearance': serializeParam(
          _appearance,
          ParamType.DataStruct,
        ),
        'is_public': serializeParam(
          _isPublic,
          ParamType.bool,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'image_style': serializeParam(
          _imageStyle,
          ParamType.String,
        ),
        'ethnicity': serializeParam(
          _ethnicity,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.String,
        ),
        'reference_image': serializeParam(
          _referenceImage,
          ParamType.String,
        ),
        'created_images': serializeParam(
          _createdImages,
          ParamType.String,
          isList: true,
        ),
        'appereanceAdmin': serializeParam(
          _appereanceAdmin,
          ParamType.String,
        ),
        'characterAdmin': serializeParam(
          _characterAdmin,
          ParamType.String,
        ),
        'userReference': serializeParam(
          _userReference,
          ParamType.DocumentReference,
        ),
        'descriptionDisplay': serializeParam(
          _descriptionDisplay,
          ParamType.String,
        ),
        'characterDisplay': serializeParam(
          _characterDisplay,
          ParamType.String,
        ),
        'personalityDisplay': serializeParam(
          _personalityDisplay,
          ParamType.String,
        ),
        'intimateBehaviourDisplay': serializeParam(
          _intimateBehaviourDisplay,
          ParamType.String,
        ),
      }.withoutNulls;

  static CharacterFullStruct fromSerializableMap(Map<String, dynamic> data) =>
      CharacterFullStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        personality: deserializeStructParam(
          data['personality'],
          ParamType.DataStruct,
          false,
          structBuilder: CharacterPersonalityStruct.fromSerializableMap,
        ),
        appearance: deserializeStructParam(
          data['appearance'],
          ParamType.DataStruct,
          false,
          structBuilder: CharacterAppearanceStruct.fromSerializableMap,
        ),
        isPublic: deserializeParam(
          data['is_public'],
          ParamType.bool,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        imageStyle: deserializeParam(
          data['image_style'],
          ParamType.String,
          false,
        ),
        ethnicity: deserializeParam(
          data['ethnicity'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.String,
          false,
        ),
        referenceImage: deserializeParam(
          data['reference_image'],
          ParamType.String,
          false,
        ),
        createdImages: deserializeParam<String>(
          data['created_images'],
          ParamType.String,
          true,
        ),
        appereanceAdmin: deserializeParam(
          data['appereanceAdmin'],
          ParamType.String,
          false,
        ),
        characterAdmin: deserializeParam(
          data['characterAdmin'],
          ParamType.String,
          false,
        ),
        userReference: deserializeParam(
          data['userReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        descriptionDisplay: deserializeParam(
          data['descriptionDisplay'],
          ParamType.String,
          false,
        ),
        characterDisplay: deserializeParam(
          data['characterDisplay'],
          ParamType.String,
          false,
        ),
        personalityDisplay: deserializeParam(
          data['personalityDisplay'],
          ParamType.String,
          false,
        ),
        intimateBehaviourDisplay: deserializeParam(
          data['intimateBehaviourDisplay'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CharacterFullStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CharacterFullStruct &&
        name == other.name &&
        personality == other.personality &&
        appearance == other.appearance &&
        isPublic == other.isPublic &&
        gender == other.gender &&
        imageStyle == other.imageStyle &&
        ethnicity == other.ethnicity &&
        age == other.age &&
        referenceImage == other.referenceImage &&
        listEquality.equals(createdImages, other.createdImages) &&
        appereanceAdmin == other.appereanceAdmin &&
        characterAdmin == other.characterAdmin &&
        userReference == other.userReference &&
        descriptionDisplay == other.descriptionDisplay &&
        characterDisplay == other.characterDisplay &&
        personalityDisplay == other.personalityDisplay &&
        intimateBehaviourDisplay == other.intimateBehaviourDisplay;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        personality,
        appearance,
        isPublic,
        gender,
        imageStyle,
        ethnicity,
        age,
        referenceImage,
        createdImages,
        appereanceAdmin,
        characterAdmin,
        userReference,
        descriptionDisplay,
        characterDisplay,
        personalityDisplay,
        intimateBehaviourDisplay
      ]);
}

CharacterFullStruct createCharacterFullStruct({
  String? name,
  CharacterPersonalityStruct? personality,
  CharacterAppearanceStruct? appearance,
  bool? isPublic,
  String? gender,
  String? imageStyle,
  String? ethnicity,
  String? age,
  String? referenceImage,
  String? appereanceAdmin,
  String? characterAdmin,
  DocumentReference? userReference,
  String? descriptionDisplay,
  String? characterDisplay,
  String? personalityDisplay,
  String? intimateBehaviourDisplay,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CharacterFullStruct(
      name: name,
      personality: personality ??
          (clearUnsetFields ? CharacterPersonalityStruct() : null),
      appearance:
          appearance ?? (clearUnsetFields ? CharacterAppearanceStruct() : null),
      isPublic: isPublic,
      gender: gender,
      imageStyle: imageStyle,
      ethnicity: ethnicity,
      age: age,
      referenceImage: referenceImage,
      appereanceAdmin: appereanceAdmin,
      characterAdmin: characterAdmin,
      userReference: userReference,
      descriptionDisplay: descriptionDisplay,
      characterDisplay: characterDisplay,
      personalityDisplay: personalityDisplay,
      intimateBehaviourDisplay: intimateBehaviourDisplay,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CharacterFullStruct? updateCharacterFullStruct(
  CharacterFullStruct? characterFull, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    characterFull
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCharacterFullStructData(
  Map<String, dynamic> firestoreData,
  CharacterFullStruct? characterFull,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (characterFull == null) {
    return;
  }
  if (characterFull.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && characterFull.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final characterFullData =
      getCharacterFullFirestoreData(characterFull, forFieldValue);
  final nestedData =
      characterFullData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = characterFull.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCharacterFullFirestoreData(
  CharacterFullStruct? characterFull, [
  bool forFieldValue = false,
]) {
  if (characterFull == null) {
    return {};
  }
  final firestoreData = mapToFirestore(characterFull.toMap());

  // Handle nested data for "personality" field.
  addCharacterPersonalityStructData(
    firestoreData,
    characterFull.hasPersonality() ? characterFull.personality : null,
    'personality',
    forFieldValue,
  );

  // Handle nested data for "appearance" field.
  addCharacterAppearanceStructData(
    firestoreData,
    characterFull.hasAppearance() ? characterFull.appearance : null,
    'appearance',
    forFieldValue,
  );

  // Add any Firestore field values
  characterFull.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCharacterFullListFirestoreData(
  List<CharacterFullStruct>? characterFulls,
) =>
    characterFulls
        ?.map((e) => getCharacterFullFirestoreData(e, true))
        .toList() ??
    [];
