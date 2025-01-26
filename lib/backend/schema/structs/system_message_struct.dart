// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SystemMessageStruct extends FFFirebaseStruct {
  SystemMessageStruct({
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

  static SystemMessageStruct fromMap(Map<String, dynamic> data) =>
      SystemMessageStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
      );

  static SystemMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? SystemMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static SystemMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      SystemMessageStruct(
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
  String toString() => 'SystemMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SystemMessageStruct &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content]);
}

SystemMessageStruct createSystemMessageStruct({
  String? role,
  String? content,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SystemMessageStruct(
      role: role,
      content: content,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SystemMessageStruct? updateSystemMessageStruct(
  SystemMessageStruct? systemMessage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    systemMessage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSystemMessageStructData(
  Map<String, dynamic> firestoreData,
  SystemMessageStruct? systemMessage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (systemMessage == null) {
    return;
  }
  if (systemMessage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && systemMessage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final systemMessageData =
      getSystemMessageFirestoreData(systemMessage, forFieldValue);
  final nestedData =
      systemMessageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = systemMessage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSystemMessageFirestoreData(
  SystemMessageStruct? systemMessage, [
  bool forFieldValue = false,
]) {
  if (systemMessage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(systemMessage.toMap());

  // Add any Firestore field values
  systemMessage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSystemMessageListFirestoreData(
  List<SystemMessageStruct>? systemMessages,
) =>
    systemMessages
        ?.map((e) => getSystemMessageFirestoreData(e, true))
        .toList() ??
    [];
