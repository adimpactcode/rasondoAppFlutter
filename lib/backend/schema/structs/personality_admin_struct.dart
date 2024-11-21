// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PersonalityAdminStruct extends FFFirebaseStruct {
  PersonalityAdminStruct({
    String? shortDescriptionDisplay,
    String? mainCharacterDisplay,
    String? mainPersonalityDisplay,
    String? intimateBehaviourDisplay,
    String? descriptionMain,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _shortDescriptionDisplay = shortDescriptionDisplay,
        _mainCharacterDisplay = mainCharacterDisplay,
        _mainPersonalityDisplay = mainPersonalityDisplay,
        _intimateBehaviourDisplay = intimateBehaviourDisplay,
        _descriptionMain = descriptionMain,
        super(firestoreUtilData);

  // "shortDescriptionDisplay" field.
  String? _shortDescriptionDisplay;
  String get shortDescriptionDisplay => _shortDescriptionDisplay ?? '';
  set shortDescriptionDisplay(String? val) => _shortDescriptionDisplay = val;

  bool hasShortDescriptionDisplay() => _shortDescriptionDisplay != null;

  // "mainCharacterDisplay" field.
  String? _mainCharacterDisplay;
  String get mainCharacterDisplay => _mainCharacterDisplay ?? '';
  set mainCharacterDisplay(String? val) => _mainCharacterDisplay = val;

  bool hasMainCharacterDisplay() => _mainCharacterDisplay != null;

  // "mainPersonalityDisplay" field.
  String? _mainPersonalityDisplay;
  String get mainPersonalityDisplay => _mainPersonalityDisplay ?? '';
  set mainPersonalityDisplay(String? val) => _mainPersonalityDisplay = val;

  bool hasMainPersonalityDisplay() => _mainPersonalityDisplay != null;

  // "intimateBehaviourDisplay" field.
  String? _intimateBehaviourDisplay;
  String get intimateBehaviourDisplay => _intimateBehaviourDisplay ?? '';
  set intimateBehaviourDisplay(String? val) => _intimateBehaviourDisplay = val;

  bool hasIntimateBehaviourDisplay() => _intimateBehaviourDisplay != null;

  // "descriptionMain" field.
  String? _descriptionMain;
  String get descriptionMain => _descriptionMain ?? '';
  set descriptionMain(String? val) => _descriptionMain = val;

  bool hasDescriptionMain() => _descriptionMain != null;

  static PersonalityAdminStruct fromMap(Map<String, dynamic> data) =>
      PersonalityAdminStruct(
        shortDescriptionDisplay: data['shortDescriptionDisplay'] as String?,
        mainCharacterDisplay: data['mainCharacterDisplay'] as String?,
        mainPersonalityDisplay: data['mainPersonalityDisplay'] as String?,
        intimateBehaviourDisplay: data['intimateBehaviourDisplay'] as String?,
        descriptionMain: data['descriptionMain'] as String?,
      );

  static PersonalityAdminStruct? maybeFromMap(dynamic data) => data is Map
      ? PersonalityAdminStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shortDescriptionDisplay': _shortDescriptionDisplay,
        'mainCharacterDisplay': _mainCharacterDisplay,
        'mainPersonalityDisplay': _mainPersonalityDisplay,
        'intimateBehaviourDisplay': _intimateBehaviourDisplay,
        'descriptionMain': _descriptionMain,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shortDescriptionDisplay': serializeParam(
          _shortDescriptionDisplay,
          ParamType.String,
        ),
        'mainCharacterDisplay': serializeParam(
          _mainCharacterDisplay,
          ParamType.String,
        ),
        'mainPersonalityDisplay': serializeParam(
          _mainPersonalityDisplay,
          ParamType.String,
        ),
        'intimateBehaviourDisplay': serializeParam(
          _intimateBehaviourDisplay,
          ParamType.String,
        ),
        'descriptionMain': serializeParam(
          _descriptionMain,
          ParamType.String,
        ),
      }.withoutNulls;

  static PersonalityAdminStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PersonalityAdminStruct(
        shortDescriptionDisplay: deserializeParam(
          data['shortDescriptionDisplay'],
          ParamType.String,
          false,
        ),
        mainCharacterDisplay: deserializeParam(
          data['mainCharacterDisplay'],
          ParamType.String,
          false,
        ),
        mainPersonalityDisplay: deserializeParam(
          data['mainPersonalityDisplay'],
          ParamType.String,
          false,
        ),
        intimateBehaviourDisplay: deserializeParam(
          data['intimateBehaviourDisplay'],
          ParamType.String,
          false,
        ),
        descriptionMain: deserializeParam(
          data['descriptionMain'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PersonalityAdminStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PersonalityAdminStruct &&
        shortDescriptionDisplay == other.shortDescriptionDisplay &&
        mainCharacterDisplay == other.mainCharacterDisplay &&
        mainPersonalityDisplay == other.mainPersonalityDisplay &&
        intimateBehaviourDisplay == other.intimateBehaviourDisplay &&
        descriptionMain == other.descriptionMain;
  }

  @override
  int get hashCode => const ListEquality().hash([
        shortDescriptionDisplay,
        mainCharacterDisplay,
        mainPersonalityDisplay,
        intimateBehaviourDisplay,
        descriptionMain
      ]);
}

PersonalityAdminStruct createPersonalityAdminStruct({
  String? shortDescriptionDisplay,
  String? mainCharacterDisplay,
  String? mainPersonalityDisplay,
  String? intimateBehaviourDisplay,
  String? descriptionMain,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PersonalityAdminStruct(
      shortDescriptionDisplay: shortDescriptionDisplay,
      mainCharacterDisplay: mainCharacterDisplay,
      mainPersonalityDisplay: mainPersonalityDisplay,
      intimateBehaviourDisplay: intimateBehaviourDisplay,
      descriptionMain: descriptionMain,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PersonalityAdminStruct? updatePersonalityAdminStruct(
  PersonalityAdminStruct? personalityAdmin, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    personalityAdmin
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPersonalityAdminStructData(
  Map<String, dynamic> firestoreData,
  PersonalityAdminStruct? personalityAdmin,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (personalityAdmin == null) {
    return;
  }
  if (personalityAdmin.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && personalityAdmin.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final personalityAdminData =
      getPersonalityAdminFirestoreData(personalityAdmin, forFieldValue);
  final nestedData =
      personalityAdminData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = personalityAdmin.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPersonalityAdminFirestoreData(
  PersonalityAdminStruct? personalityAdmin, [
  bool forFieldValue = false,
]) {
  if (personalityAdmin == null) {
    return {};
  }
  final firestoreData = mapToFirestore(personalityAdmin.toMap());

  // Add any Firestore field values
  personalityAdmin.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPersonalityAdminListFirestoreData(
  List<PersonalityAdminStruct>? personalityAdmins,
) =>
    personalityAdmins
        ?.map((e) => getPersonalityAdminFirestoreData(e, true))
        .toList() ??
    [];
