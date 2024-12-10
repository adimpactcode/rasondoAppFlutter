// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterAppearanceStruct extends FFFirebaseStruct {
  CharacterAppearanceStruct({
    String? hairColour,
    String? hairStyle,
    String? eyeColour,
    String? bodyTyp,
    String? breastSize,
    String? buttSize,
    String? clothing,
    String? ambiente,
    String? ethnicity,
    String? accessoires,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hairColour = hairColour,
        _hairStyle = hairStyle,
        _eyeColour = eyeColour,
        _bodyTyp = bodyTyp,
        _breastSize = breastSize,
        _buttSize = buttSize,
        _clothing = clothing,
        _ambiente = ambiente,
        _ethnicity = ethnicity,
        _accessoires = accessoires,
        super(firestoreUtilData);

  // "hair_colour" field.
  String? _hairColour;
  String get hairColour => _hairColour ?? '';
  set hairColour(String? val) => _hairColour = val;

  bool hasHairColour() => _hairColour != null;

  // "hair_style" field.
  String? _hairStyle;
  String get hairStyle => _hairStyle ?? '';
  set hairStyle(String? val) => _hairStyle = val;

  bool hasHairStyle() => _hairStyle != null;

  // "eye_colour" field.
  String? _eyeColour;
  String get eyeColour => _eyeColour ?? '';
  set eyeColour(String? val) => _eyeColour = val;

  bool hasEyeColour() => _eyeColour != null;

  // "body_typ" field.
  String? _bodyTyp;
  String get bodyTyp => _bodyTyp ?? '';
  set bodyTyp(String? val) => _bodyTyp = val;

  bool hasBodyTyp() => _bodyTyp != null;

  // "breast_size" field.
  String? _breastSize;
  String get breastSize => _breastSize ?? '';
  set breastSize(String? val) => _breastSize = val;

  bool hasBreastSize() => _breastSize != null;

  // "butt_size" field.
  String? _buttSize;
  String get buttSize => _buttSize ?? '';
  set buttSize(String? val) => _buttSize = val;

  bool hasButtSize() => _buttSize != null;

  // "clothing" field.
  String? _clothing;
  String get clothing => _clothing ?? '';
  set clothing(String? val) => _clothing = val;

  bool hasClothing() => _clothing != null;

  // "ambiente" field.
  String? _ambiente;
  String get ambiente => _ambiente ?? '';
  set ambiente(String? val) => _ambiente = val;

  bool hasAmbiente() => _ambiente != null;

  // "ethnicity" field.
  String? _ethnicity;
  String get ethnicity => _ethnicity ?? '';
  set ethnicity(String? val) => _ethnicity = val;

  bool hasEthnicity() => _ethnicity != null;

  // "accessoires" field.
  String? _accessoires;
  String get accessoires => _accessoires ?? '';
  set accessoires(String? val) => _accessoires = val;

  bool hasAccessoires() => _accessoires != null;

  static CharacterAppearanceStruct fromMap(Map<String, dynamic> data) =>
      CharacterAppearanceStruct(
        hairColour: data['hair_colour'] as String?,
        hairStyle: data['hair_style'] as String?,
        eyeColour: data['eye_colour'] as String?,
        bodyTyp: data['body_typ'] as String?,
        breastSize: data['breast_size'] as String?,
        buttSize: data['butt_size'] as String?,
        clothing: data['clothing'] as String?,
        ambiente: data['ambiente'] as String?,
        ethnicity: data['ethnicity'] as String?,
        accessoires: data['accessoires'] as String?,
      );

  static CharacterAppearanceStruct? maybeFromMap(dynamic data) => data is Map
      ? CharacterAppearanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'hair_colour': _hairColour,
        'hair_style': _hairStyle,
        'eye_colour': _eyeColour,
        'body_typ': _bodyTyp,
        'breast_size': _breastSize,
        'butt_size': _buttSize,
        'clothing': _clothing,
        'ambiente': _ambiente,
        'ethnicity': _ethnicity,
        'accessoires': _accessoires,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hair_colour': serializeParam(
          _hairColour,
          ParamType.String,
        ),
        'hair_style': serializeParam(
          _hairStyle,
          ParamType.String,
        ),
        'eye_colour': serializeParam(
          _eyeColour,
          ParamType.String,
        ),
        'body_typ': serializeParam(
          _bodyTyp,
          ParamType.String,
        ),
        'breast_size': serializeParam(
          _breastSize,
          ParamType.String,
        ),
        'butt_size': serializeParam(
          _buttSize,
          ParamType.String,
        ),
        'clothing': serializeParam(
          _clothing,
          ParamType.String,
        ),
        'ambiente': serializeParam(
          _ambiente,
          ParamType.String,
        ),
        'ethnicity': serializeParam(
          _ethnicity,
          ParamType.String,
        ),
        'accessoires': serializeParam(
          _accessoires,
          ParamType.String,
        ),
      }.withoutNulls;

  static CharacterAppearanceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CharacterAppearanceStruct(
        hairColour: deserializeParam(
          data['hair_colour'],
          ParamType.String,
          false,
        ),
        hairStyle: deserializeParam(
          data['hair_style'],
          ParamType.String,
          false,
        ),
        eyeColour: deserializeParam(
          data['eye_colour'],
          ParamType.String,
          false,
        ),
        bodyTyp: deserializeParam(
          data['body_typ'],
          ParamType.String,
          false,
        ),
        breastSize: deserializeParam(
          data['breast_size'],
          ParamType.String,
          false,
        ),
        buttSize: deserializeParam(
          data['butt_size'],
          ParamType.String,
          false,
        ),
        clothing: deserializeParam(
          data['clothing'],
          ParamType.String,
          false,
        ),
        ambiente: deserializeParam(
          data['ambiente'],
          ParamType.String,
          false,
        ),
        ethnicity: deserializeParam(
          data['ethnicity'],
          ParamType.String,
          false,
        ),
        accessoires: deserializeParam(
          data['accessoires'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CharacterAppearanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CharacterAppearanceStruct &&
        hairColour == other.hairColour &&
        hairStyle == other.hairStyle &&
        eyeColour == other.eyeColour &&
        bodyTyp == other.bodyTyp &&
        breastSize == other.breastSize &&
        buttSize == other.buttSize &&
        clothing == other.clothing &&
        ambiente == other.ambiente &&
        ethnicity == other.ethnicity &&
        accessoires == other.accessoires;
  }

  @override
  int get hashCode => const ListEquality().hash([
        hairColour,
        hairStyle,
        eyeColour,
        bodyTyp,
        breastSize,
        buttSize,
        clothing,
        ambiente,
        ethnicity,
        accessoires
      ]);
}

CharacterAppearanceStruct createCharacterAppearanceStruct({
  String? hairColour,
  String? hairStyle,
  String? eyeColour,
  String? bodyTyp,
  String? breastSize,
  String? buttSize,
  String? clothing,
  String? ambiente,
  String? ethnicity,
  String? accessoires,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CharacterAppearanceStruct(
      hairColour: hairColour,
      hairStyle: hairStyle,
      eyeColour: eyeColour,
      bodyTyp: bodyTyp,
      breastSize: breastSize,
      buttSize: buttSize,
      clothing: clothing,
      ambiente: ambiente,
      ethnicity: ethnicity,
      accessoires: accessoires,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CharacterAppearanceStruct? updateCharacterAppearanceStruct(
  CharacterAppearanceStruct? characterAppearance, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    characterAppearance
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCharacterAppearanceStructData(
  Map<String, dynamic> firestoreData,
  CharacterAppearanceStruct? characterAppearance,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (characterAppearance == null) {
    return;
  }
  if (characterAppearance.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && characterAppearance.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final characterAppearanceData =
      getCharacterAppearanceFirestoreData(characterAppearance, forFieldValue);
  final nestedData =
      characterAppearanceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      characterAppearance.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCharacterAppearanceFirestoreData(
  CharacterAppearanceStruct? characterAppearance, [
  bool forFieldValue = false,
]) {
  if (characterAppearance == null) {
    return {};
  }
  final firestoreData = mapToFirestore(characterAppearance.toMap());

  // Add any Firestore field values
  characterAppearance.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCharacterAppearanceListFirestoreData(
  List<CharacterAppearanceStruct>? characterAppearances,
) =>
    characterAppearances
        ?.map((e) => getCharacterAppearanceFirestoreData(e, true))
        .toList() ??
    [];
