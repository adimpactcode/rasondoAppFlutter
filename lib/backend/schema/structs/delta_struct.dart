// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeltaStruct extends FFFirebaseStruct {
  DeltaStruct({
    String? role,
    String? content,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _content = content,
        super(firestoreUtilData);

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static DeltaStruct fromMap(Map<String, dynamic> data) => DeltaStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
      );

  static DeltaStruct? maybeFromMap(dynamic data) =>
      data is Map ? DeltaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeltaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeltaStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeltaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeltaStruct &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content]);
}

DeltaStruct createDeltaStruct({
  String? role,
  String? content,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeltaStruct(
      role: role,
      content: content,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeltaStruct? updateDeltaStruct(
  DeltaStruct? delta, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    delta
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeltaStructData(
  Map<String, dynamic> firestoreData,
  DeltaStruct? delta,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (delta == null) {
    return;
  }
  if (delta.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && delta.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deltaData = getDeltaFirestoreData(delta, forFieldValue);
  final nestedData = deltaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = delta.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeltaFirestoreData(
  DeltaStruct? delta, [
  bool forFieldValue = false,
]) {
  if (delta == null) {
    return {};
  }
  final firestoreData = mapToFirestore(delta.toMap());

  // Add any Firestore field values
  delta.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeltaListFirestoreData(
  List<DeltaStruct>? deltas,
) =>
    deltas?.map((e) => getDeltaFirestoreData(e, true)).toList() ?? [];
