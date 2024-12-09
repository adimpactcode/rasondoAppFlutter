// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesStruct extends FFFirebaseStruct {
  MessagesStruct({
    String? role,
    String? content,
    bool? isImage,
    DateTime? createdAt,
    String? messageId,
    String? initialMessage,
    String? assistantMessage,
    String? imagePrompt,
    List<DocumentReference>? oldMessages,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _content = content,
        _isImage = isImage,
        _createdAt = createdAt,
        _messageId = messageId,
        _initialMessage = initialMessage,
        _assistantMessage = assistantMessage,
        _imagePrompt = imagePrompt,
        _oldMessages = oldMessages,
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

  // "is_image" field.
  bool? _isImage;
  bool get isImage => _isImage ?? false;
  set isImage(bool? val) => _isImage = val;

  bool hasIsImage() => _isImage != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "message_id" field.
  String? _messageId;
  String get messageId => _messageId ?? '';
  set messageId(String? val) => _messageId = val;

  bool hasMessageId() => _messageId != null;

  // "initialMessage" field.
  String? _initialMessage;
  String get initialMessage => _initialMessage ?? '';
  set initialMessage(String? val) => _initialMessage = val;

  bool hasInitialMessage() => _initialMessage != null;

  // "assistantMessage" field.
  String? _assistantMessage;
  String get assistantMessage => _assistantMessage ?? '';
  set assistantMessage(String? val) => _assistantMessage = val;

  bool hasAssistantMessage() => _assistantMessage != null;

  // "image_prompt" field.
  String? _imagePrompt;
  String get imagePrompt => _imagePrompt ?? '';
  set imagePrompt(String? val) => _imagePrompt = val;

  bool hasImagePrompt() => _imagePrompt != null;

  // "oldMessages" field.
  List<DocumentReference>? _oldMessages;
  List<DocumentReference> get oldMessages => _oldMessages ?? const [];
  set oldMessages(List<DocumentReference>? val) => _oldMessages = val;

  void updateOldMessages(Function(List<DocumentReference>) updateFn) {
    updateFn(_oldMessages ??= []);
  }

  bool hasOldMessages() => _oldMessages != null;

  static MessagesStruct fromMap(Map<String, dynamic> data) => MessagesStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
        isImage: data['is_image'] as bool?,
        createdAt: data['created_at'] as DateTime?,
        messageId: data['message_id'] as String?,
        initialMessage: data['initialMessage'] as String?,
        assistantMessage: data['assistantMessage'] as String?,
        imagePrompt: data['image_prompt'] as String?,
        oldMessages: getDataList(data['oldMessages']),
      );

  static MessagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
        'is_image': _isImage,
        'created_at': _createdAt,
        'message_id': _messageId,
        'initialMessage': _initialMessage,
        'assistantMessage': _assistantMessage,
        'image_prompt': _imagePrompt,
        'oldMessages': _oldMessages,
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
        'is_image': serializeParam(
          _isImage,
          ParamType.bool,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'message_id': serializeParam(
          _messageId,
          ParamType.String,
        ),
        'initialMessage': serializeParam(
          _initialMessage,
          ParamType.String,
        ),
        'assistantMessage': serializeParam(
          _assistantMessage,
          ParamType.String,
        ),
        'image_prompt': serializeParam(
          _imagePrompt,
          ParamType.String,
        ),
        'oldMessages': serializeParam(
          _oldMessages,
          ParamType.DocumentReference,
          isList: true,
        ),
      }.withoutNulls;

  static MessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessagesStruct(
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
        isImage: deserializeParam(
          data['is_image'],
          ParamType.bool,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        messageId: deserializeParam(
          data['message_id'],
          ParamType.String,
          false,
        ),
        initialMessage: deserializeParam(
          data['initialMessage'],
          ParamType.String,
          false,
        ),
        assistantMessage: deserializeParam(
          data['assistantMessage'],
          ParamType.String,
          false,
        ),
        imagePrompt: deserializeParam(
          data['image_prompt'],
          ParamType.String,
          false,
        ),
        oldMessages: deserializeParam<DocumentReference>(
          data['oldMessages'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['chats', 'messages'],
        ),
      );

  @override
  String toString() => 'MessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MessagesStruct &&
        role == other.role &&
        content == other.content &&
        isImage == other.isImage &&
        createdAt == other.createdAt &&
        messageId == other.messageId &&
        initialMessage == other.initialMessage &&
        assistantMessage == other.assistantMessage &&
        imagePrompt == other.imagePrompt &&
        listEquality.equals(oldMessages, other.oldMessages);
  }

  @override
  int get hashCode => const ListEquality().hash([
        role,
        content,
        isImage,
        createdAt,
        messageId,
        initialMessage,
        assistantMessage,
        imagePrompt,
        oldMessages
      ]);
}

MessagesStruct createMessagesStruct({
  String? role,
  String? content,
  bool? isImage,
  DateTime? createdAt,
  String? messageId,
  String? initialMessage,
  String? assistantMessage,
  String? imagePrompt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessagesStruct(
      role: role,
      content: content,
      isImage: isImage,
      createdAt: createdAt,
      messageId: messageId,
      initialMessage: initialMessage,
      assistantMessage: assistantMessage,
      imagePrompt: imagePrompt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessagesStruct? updateMessagesStruct(
  MessagesStruct? messages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessagesStructData(
  Map<String, dynamic> firestoreData,
  MessagesStruct? messages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messages == null) {
    return;
  }
  if (messages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messagesData = getMessagesFirestoreData(messages, forFieldValue);
  final nestedData = messagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessagesFirestoreData(
  MessagesStruct? messages, [
  bool forFieldValue = false,
]) {
  if (messages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messages.toMap());

  // Add any Firestore field values
  messages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessagesListFirestoreData(
  List<MessagesStruct>? messagess,
) =>
    messagess?.map((e) => getMessagesFirestoreData(e, true)).toList() ?? [];
