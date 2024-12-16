// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageDetailsStruct extends FFFirebaseStruct {
  ImageDetailsStruct({
    String? prompt,
    bool? isReferenceImage,
    DocumentReference? characterId,
    DateTime? createdAt,
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _prompt = prompt,
        _isReferenceImage = isReferenceImage,
        _characterId = characterId,
        _createdAt = createdAt,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  set prompt(String? val) => _prompt = val;

  bool hasPrompt() => _prompt != null;

  // "is_reference_image" field.
  bool? _isReferenceImage;
  bool get isReferenceImage => _isReferenceImage ?? false;
  set isReferenceImage(bool? val) => _isReferenceImage = val;

  bool hasIsReferenceImage() => _isReferenceImage != null;

  // "character_id" field.
  DocumentReference? _characterId;
  DocumentReference? get characterId => _characterId;
  set characterId(DocumentReference? val) => _characterId = val;

  bool hasCharacterId() => _characterId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static ImageDetailsStruct fromMap(Map<String, dynamic> data) =>
      ImageDetailsStruct(
        prompt: data['prompt'] as String?,
        isReferenceImage: data['is_reference_image'] as bool?,
        characterId: data['character_id'] as DocumentReference?,
        createdAt: data['created_at'] as DateTime?,
        imageUrl: data['image_url'] as String?,
      );

  static ImageDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'prompt': _prompt,
        'is_reference_image': _isReferenceImage,
        'character_id': _characterId,
        'created_at': _createdAt,
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prompt': serializeParam(
          _prompt,
          ParamType.String,
        ),
        'is_reference_image': serializeParam(
          _isReferenceImage,
          ParamType.bool,
        ),
        'character_id': serializeParam(
          _characterId,
          ParamType.DocumentReference,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageDetailsStruct(
        prompt: deserializeParam(
          data['prompt'],
          ParamType.String,
          false,
        ),
        isReferenceImage: deserializeParam(
          data['is_reference_image'],
          ParamType.bool,
          false,
        ),
        characterId: deserializeParam(
          data['character_id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['charactersMain'],
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageDetailsStruct &&
        prompt == other.prompt &&
        isReferenceImage == other.isReferenceImage &&
        characterId == other.characterId &&
        createdAt == other.createdAt &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([prompt, isReferenceImage, characterId, createdAt, imageUrl]);
}

ImageDetailsStruct createImageDetailsStruct({
  String? prompt,
  bool? isReferenceImage,
  DocumentReference? characterId,
  DateTime? createdAt,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageDetailsStruct(
      prompt: prompt,
      isReferenceImage: isReferenceImage,
      characterId: characterId,
      createdAt: createdAt,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageDetailsStruct? updateImageDetailsStruct(
  ImageDetailsStruct? imageDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imageDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImageDetailsStructData(
  Map<String, dynamic> firestoreData,
  ImageDetailsStruct? imageDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageDetails == null) {
    return;
  }
  if (imageDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imageDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageDetailsData =
      getImageDetailsFirestoreData(imageDetails, forFieldValue);
  final nestedData =
      imageDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imageDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageDetailsFirestoreData(
  ImageDetailsStruct? imageDetails, [
  bool forFieldValue = false,
]) {
  if (imageDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imageDetails.toMap());

  // Add any Firestore field values
  imageDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageDetailsListFirestoreData(
  List<ImageDetailsStruct>? imageDetailss,
) =>
    imageDetailss?.map((e) => getImageDetailsFirestoreData(e, true)).toList() ??
    [];
