// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterPersonalityStruct extends FFFirebaseStruct {
  CharacterPersonalityStruct({
    String? characterChoice,
    String? personalityChoice,
    String? voiceTone,
    String? job,
    String? intimateBehavior,
    String? scenarios,
    String? description,
    String? characterAdmin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _characterChoice = characterChoice,
        _personalityChoice = personalityChoice,
        _voiceTone = voiceTone,
        _job = job,
        _intimateBehavior = intimateBehavior,
        _scenarios = scenarios,
        _description = description,
        _characterAdmin = characterAdmin,
        super(firestoreUtilData);

  // "characterChoice" field.
  String? _characterChoice;
  String get characterChoice => _characterChoice ?? '';
  set characterChoice(String? val) => _characterChoice = val;

  bool hasCharacterChoice() => _characterChoice != null;

  // "personalityChoice" field.
  String? _personalityChoice;
  String get personalityChoice => _personalityChoice ?? '';
  set personalityChoice(String? val) => _personalityChoice = val;

  bool hasPersonalityChoice() => _personalityChoice != null;

  // "voiceTone" field.
  String? _voiceTone;
  String get voiceTone => _voiceTone ?? '';
  set voiceTone(String? val) => _voiceTone = val;

  bool hasVoiceTone() => _voiceTone != null;

  // "job" field.
  String? _job;
  String get job => _job ?? '';
  set job(String? val) => _job = val;

  bool hasJob() => _job != null;

  // "intimateBehavior" field.
  String? _intimateBehavior;
  String get intimateBehavior => _intimateBehavior ?? '';
  set intimateBehavior(String? val) => _intimateBehavior = val;

  bool hasIntimateBehavior() => _intimateBehavior != null;

  // "scenarios" field.
  String? _scenarios;
  String get scenarios => _scenarios ?? '';
  set scenarios(String? val) => _scenarios = val;

  bool hasScenarios() => _scenarios != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "characterAdmin" field.
  String? _characterAdmin;
  String get characterAdmin => _characterAdmin ?? '';
  set characterAdmin(String? val) => _characterAdmin = val;

  bool hasCharacterAdmin() => _characterAdmin != null;

  static CharacterPersonalityStruct fromMap(Map<String, dynamic> data) =>
      CharacterPersonalityStruct(
        characterChoice: data['characterChoice'] as String?,
        personalityChoice: data['personalityChoice'] as String?,
        voiceTone: data['voiceTone'] as String?,
        job: data['job'] as String?,
        intimateBehavior: data['intimateBehavior'] as String?,
        scenarios: data['scenarios'] as String?,
        description: data['description'] as String?,
        characterAdmin: data['characterAdmin'] as String?,
      );

  static CharacterPersonalityStruct? maybeFromMap(dynamic data) => data is Map
      ? CharacterPersonalityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'characterChoice': _characterChoice,
        'personalityChoice': _personalityChoice,
        'voiceTone': _voiceTone,
        'job': _job,
        'intimateBehavior': _intimateBehavior,
        'scenarios': _scenarios,
        'description': _description,
        'characterAdmin': _characterAdmin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'characterChoice': serializeParam(
          _characterChoice,
          ParamType.String,
        ),
        'personalityChoice': serializeParam(
          _personalityChoice,
          ParamType.String,
        ),
        'voiceTone': serializeParam(
          _voiceTone,
          ParamType.String,
        ),
        'job': serializeParam(
          _job,
          ParamType.String,
        ),
        'intimateBehavior': serializeParam(
          _intimateBehavior,
          ParamType.String,
        ),
        'scenarios': serializeParam(
          _scenarios,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'characterAdmin': serializeParam(
          _characterAdmin,
          ParamType.String,
        ),
      }.withoutNulls;

  static CharacterPersonalityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CharacterPersonalityStruct(
        characterChoice: deserializeParam(
          data['characterChoice'],
          ParamType.String,
          false,
        ),
        personalityChoice: deserializeParam(
          data['personalityChoice'],
          ParamType.String,
          false,
        ),
        voiceTone: deserializeParam(
          data['voiceTone'],
          ParamType.String,
          false,
        ),
        job: deserializeParam(
          data['job'],
          ParamType.String,
          false,
        ),
        intimateBehavior: deserializeParam(
          data['intimateBehavior'],
          ParamType.String,
          false,
        ),
        scenarios: deserializeParam(
          data['scenarios'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        characterAdmin: deserializeParam(
          data['characterAdmin'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CharacterPersonalityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CharacterPersonalityStruct &&
        characterChoice == other.characterChoice &&
        personalityChoice == other.personalityChoice &&
        voiceTone == other.voiceTone &&
        job == other.job &&
        intimateBehavior == other.intimateBehavior &&
        scenarios == other.scenarios &&
        description == other.description &&
        characterAdmin == other.characterAdmin;
  }

  @override
  int get hashCode => const ListEquality().hash([
        characterChoice,
        personalityChoice,
        voiceTone,
        job,
        intimateBehavior,
        scenarios,
        description,
        characterAdmin
      ]);
}

CharacterPersonalityStruct createCharacterPersonalityStruct({
  String? characterChoice,
  String? personalityChoice,
  String? voiceTone,
  String? job,
  String? intimateBehavior,
  String? scenarios,
  String? description,
  String? characterAdmin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CharacterPersonalityStruct(
      characterChoice: characterChoice,
      personalityChoice: personalityChoice,
      voiceTone: voiceTone,
      job: job,
      intimateBehavior: intimateBehavior,
      scenarios: scenarios,
      description: description,
      characterAdmin: characterAdmin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CharacterPersonalityStruct? updateCharacterPersonalityStruct(
  CharacterPersonalityStruct? characterPersonality, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    characterPersonality
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCharacterPersonalityStructData(
  Map<String, dynamic> firestoreData,
  CharacterPersonalityStruct? characterPersonality,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (characterPersonality == null) {
    return;
  }
  if (characterPersonality.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && characterPersonality.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final characterPersonalityData =
      getCharacterPersonalityFirestoreData(characterPersonality, forFieldValue);
  final nestedData =
      characterPersonalityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      characterPersonality.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCharacterPersonalityFirestoreData(
  CharacterPersonalityStruct? characterPersonality, [
  bool forFieldValue = false,
]) {
  if (characterPersonality == null) {
    return {};
  }
  final firestoreData = mapToFirestore(characterPersonality.toMap());

  // Add any Firestore field values
  characterPersonality.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCharacterPersonalityListFirestoreData(
  List<CharacterPersonalityStruct>? characterPersonalitys,
) =>
    characterPersonalitys
        ?.map((e) => getCharacterPersonalityFirestoreData(e, true))
        .toList() ??
    [];
