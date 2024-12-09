// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OldChatMessagesStruct extends FFFirebaseStruct {
  OldChatMessagesStruct({
    List<MessagesStruct>? oldChatMessage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _oldChatMessage = oldChatMessage,
        super(firestoreUtilData);

  // "oldChatMessage" field.
  List<MessagesStruct>? _oldChatMessage;
  List<MessagesStruct> get oldChatMessage => _oldChatMessage ?? const [];
  set oldChatMessage(List<MessagesStruct>? val) => _oldChatMessage = val;

  void updateOldChatMessage(Function(List<MessagesStruct>) updateFn) {
    updateFn(_oldChatMessage ??= []);
  }

  bool hasOldChatMessage() => _oldChatMessage != null;

  static OldChatMessagesStruct fromMap(Map<String, dynamic> data) =>
      OldChatMessagesStruct(
        oldChatMessage: getStructList(
          data['oldChatMessage'],
          MessagesStruct.fromMap,
        ),
      );

  static OldChatMessagesStruct? maybeFromMap(dynamic data) => data is Map
      ? OldChatMessagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'oldChatMessage': _oldChatMessage?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'oldChatMessage': serializeParam(
          _oldChatMessage,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static OldChatMessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      OldChatMessagesStruct(
        oldChatMessage: deserializeStructParam<MessagesStruct>(
          data['oldChatMessage'],
          ParamType.DataStruct,
          true,
          structBuilder: MessagesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OldChatMessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OldChatMessagesStruct &&
        listEquality.equals(oldChatMessage, other.oldChatMessage);
  }

  @override
  int get hashCode => const ListEquality().hash([oldChatMessage]);
}

OldChatMessagesStruct createOldChatMessagesStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OldChatMessagesStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OldChatMessagesStruct? updateOldChatMessagesStruct(
  OldChatMessagesStruct? oldChatMessages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    oldChatMessages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOldChatMessagesStructData(
  Map<String, dynamic> firestoreData,
  OldChatMessagesStruct? oldChatMessages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (oldChatMessages == null) {
    return;
  }
  if (oldChatMessages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && oldChatMessages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final oldChatMessagesData =
      getOldChatMessagesFirestoreData(oldChatMessages, forFieldValue);
  final nestedData =
      oldChatMessagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = oldChatMessages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOldChatMessagesFirestoreData(
  OldChatMessagesStruct? oldChatMessages, [
  bool forFieldValue = false,
]) {
  if (oldChatMessages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(oldChatMessages.toMap());

  // Add any Firestore field values
  oldChatMessages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOldChatMessagesListFirestoreData(
  List<OldChatMessagesStruct>? oldChatMessagess,
) =>
    oldChatMessagess
        ?.map((e) => getOldChatMessagesFirestoreData(e, true))
        .toList() ??
    [];
