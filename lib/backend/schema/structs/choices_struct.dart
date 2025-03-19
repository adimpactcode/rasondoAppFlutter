// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChoicesStruct extends FFFirebaseStruct {
  ChoicesStruct({
    DeltaStruct? delta,
    int? index,
    String? finishReason,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _delta = delta,
        _index = index,
        _finishReason = finishReason,
        super(firestoreUtilData);

  // "delta" field.
  DeltaStruct? _delta;
  DeltaStruct get delta => _delta ?? DeltaStruct();
  set delta(DeltaStruct? val) => _delta = val;

  void updateDelta(Function(DeltaStruct) updateFn) {
    updateFn(_delta ??= DeltaStruct());
  }

  bool hasDelta() => _delta != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "finish_reason" field.
  String? _finishReason;
  String get finishReason => _finishReason ?? '';
  set finishReason(String? val) => _finishReason = val;

  bool hasFinishReason() => _finishReason != null;

  static ChoicesStruct fromMap(Map<String, dynamic> data) => ChoicesStruct(
        delta: data['delta'] is DeltaStruct
            ? data['delta']
            : DeltaStruct.maybeFromMap(data['delta']),
        index: castToType<int>(data['index']),
        finishReason: data['finish_reason'] as String?,
      );

  static ChoicesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChoicesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'delta': _delta?.toMap(),
        'index': _index,
        'finish_reason': _finishReason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'delta': serializeParam(
          _delta,
          ParamType.DataStruct,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'finish_reason': serializeParam(
          _finishReason,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChoicesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChoicesStruct(
        delta: deserializeStructParam(
          data['delta'],
          ParamType.DataStruct,
          false,
          structBuilder: DeltaStruct.fromSerializableMap,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        finishReason: deserializeParam(
          data['finish_reason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChoicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChoicesStruct &&
        delta == other.delta &&
        index == other.index &&
        finishReason == other.finishReason;
  }

  @override
  int get hashCode => const ListEquality().hash([delta, index, finishReason]);
}

ChoicesStruct createChoicesStruct({
  DeltaStruct? delta,
  int? index,
  String? finishReason,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChoicesStruct(
      delta: delta ?? (clearUnsetFields ? DeltaStruct() : null),
      index: index,
      finishReason: finishReason,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChoicesStruct? updateChoicesStruct(
  ChoicesStruct? choices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    choices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChoicesStructData(
  Map<String, dynamic> firestoreData,
  ChoicesStruct? choices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (choices == null) {
    return;
  }
  if (choices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && choices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final choicesData = getChoicesFirestoreData(choices, forFieldValue);
  final nestedData = choicesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = choices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChoicesFirestoreData(
  ChoicesStruct? choices, [
  bool forFieldValue = false,
]) {
  if (choices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(choices.toMap());

  // Handle nested data for "delta" field.
  addDeltaStructData(
    firestoreData,
    choices.hasDelta() ? choices.delta : null,
    'delta',
    forFieldValue,
  );

  // Add any Firestore field values
  choices.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChoicesListFirestoreData(
  List<ChoicesStruct>? choicess,
) =>
    choicess?.map((e) => getChoicesFirestoreData(e, true)).toList() ?? [];
