// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CombinedMessageStruct extends FFFirebaseStruct {
  CombinedMessageStruct({
    List<MessagesStruct>? userMessage,
    List<SystemMessageStruct>? systemMessage,
    List<OldChatMessagesStruct>? oldChatMessages,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userMessage = userMessage,
        _systemMessage = systemMessage,
        _oldChatMessages = oldChatMessages,
        super(firestoreUtilData);

  // "userMessage" field.
  List<MessagesStruct>? _userMessage;
  List<MessagesStruct> get userMessage => _userMessage ?? const [];
  set userMessage(List<MessagesStruct>? val) => _userMessage = val;

  void updateUserMessage(Function(List<MessagesStruct>) updateFn) {
    updateFn(_userMessage ??= []);
  }

  bool hasUserMessage() => _userMessage != null;

  // "systemMessage" field.
  List<SystemMessageStruct>? _systemMessage;
  List<SystemMessageStruct> get systemMessage => _systemMessage ?? const [];
  set systemMessage(List<SystemMessageStruct>? val) => _systemMessage = val;

  void updateSystemMessage(Function(List<SystemMessageStruct>) updateFn) {
    updateFn(_systemMessage ??= []);
  }

  bool hasSystemMessage() => _systemMessage != null;

  // "oldChatMessages" field.
  List<OldChatMessagesStruct>? _oldChatMessages;
  List<OldChatMessagesStruct> get oldChatMessages =>
      _oldChatMessages ?? const [];
  set oldChatMessages(List<OldChatMessagesStruct>? val) =>
      _oldChatMessages = val;

  void updateOldChatMessages(Function(List<OldChatMessagesStruct>) updateFn) {
    updateFn(_oldChatMessages ??= []);
  }

  bool hasOldChatMessages() => _oldChatMessages != null;

  static CombinedMessageStruct fromMap(Map<String, dynamic> data) =>
      CombinedMessageStruct(
        userMessage: getStructList(
          data['userMessage'],
          MessagesStruct.fromMap,
        ),
        systemMessage: getStructList(
          data['systemMessage'],
          SystemMessageStruct.fromMap,
        ),
        oldChatMessages: getStructList(
          data['oldChatMessages'],
          OldChatMessagesStruct.fromMap,
        ),
      );

  static CombinedMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? CombinedMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userMessage': _userMessage?.map((e) => e.toMap()).toList(),
        'systemMessage': _systemMessage?.map((e) => e.toMap()).toList(),
        'oldChatMessages': _oldChatMessages?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userMessage': serializeParam(
          _userMessage,
          ParamType.DataStruct,
          isList: true,
        ),
        'systemMessage': serializeParam(
          _systemMessage,
          ParamType.DataStruct,
          isList: true,
        ),
        'oldChatMessages': serializeParam(
          _oldChatMessages,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CombinedMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      CombinedMessageStruct(
        userMessage: deserializeStructParam<MessagesStruct>(
          data['userMessage'],
          ParamType.DataStruct,
          true,
          structBuilder: MessagesStruct.fromSerializableMap,
        ),
        systemMessage: deserializeStructParam<SystemMessageStruct>(
          data['systemMessage'],
          ParamType.DataStruct,
          true,
          structBuilder: SystemMessageStruct.fromSerializableMap,
        ),
        oldChatMessages: deserializeStructParam<OldChatMessagesStruct>(
          data['oldChatMessages'],
          ParamType.DataStruct,
          true,
          structBuilder: OldChatMessagesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CombinedMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CombinedMessageStruct &&
        listEquality.equals(userMessage, other.userMessage) &&
        listEquality.equals(systemMessage, other.systemMessage) &&
        listEquality.equals(oldChatMessages, other.oldChatMessages);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userMessage, systemMessage, oldChatMessages]);
}

CombinedMessageStruct createCombinedMessageStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CombinedMessageStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CombinedMessageStruct? updateCombinedMessageStruct(
  CombinedMessageStruct? combinedMessage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    combinedMessage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCombinedMessageStructData(
  Map<String, dynamic> firestoreData,
  CombinedMessageStruct? combinedMessage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (combinedMessage == null) {
    return;
  }
  if (combinedMessage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && combinedMessage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final combinedMessageData =
      getCombinedMessageFirestoreData(combinedMessage, forFieldValue);
  final nestedData =
      combinedMessageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = combinedMessage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCombinedMessageFirestoreData(
  CombinedMessageStruct? combinedMessage, [
  bool forFieldValue = false,
]) {
  if (combinedMessage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(combinedMessage.toMap());

  // Add any Firestore field values
  combinedMessage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCombinedMessageListFirestoreData(
  List<CombinedMessageStruct>? combinedMessages,
) =>
    combinedMessages
        ?.map((e) => getCombinedMessageFirestoreData(e, true))
        .toList() ??
    [];
