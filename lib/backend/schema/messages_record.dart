import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "message_id" field.
  String? _messageId;
  String get messageId => _messageId ?? '';
  bool hasMessageId() => _messageId != null;

  // "is_image" field.
  bool? _isImage;
  bool get isImage => _isImage ?? false;
  bool hasIsImage() => _isImage != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "image_prompt" field.
  String? _imagePrompt;
  String get imagePrompt => _imagePrompt ?? '';
  bool hasImagePrompt() => _imagePrompt != null;

  // "initialMessage" field.
  String? _initialMessage;
  String get initialMessage => _initialMessage ?? '';
  bool hasInitialMessage() => _initialMessage != null;

  // "assistantMessage" field.
  String? _assistantMessage;
  String get assistantMessage => _assistantMessage ?? '';
  bool hasAssistantMessage() => _assistantMessage != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _messageId = snapshotData['message_id'] as String?;
    _isImage = snapshotData['is_image'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _content = snapshotData['content'] as String?;
    _image = snapshotData['image'] as String?;
    _imagePrompt = snapshotData['image_prompt'] as String?;
    _initialMessage = snapshotData['initialMessage'] as String?;
    _assistantMessage = snapshotData['assistantMessage'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('messages')
          : FirebaseFirestore.instance.collectionGroup('messages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('messages').doc(id);

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  String? messageId,
  bool? isImage,
  DateTime? createdAt,
  String? role,
  String? content,
  String? image,
  String? imagePrompt,
  String? initialMessage,
  String? assistantMessage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message_id': messageId,
      'is_image': isImage,
      'created_at': createdAt,
      'role': role,
      'content': content,
      'image': image,
      'image_prompt': imagePrompt,
      'initialMessage': initialMessage,
      'assistantMessage': assistantMessage,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    return e1?.messageId == e2?.messageId &&
        e1?.isImage == e2?.isImage &&
        e1?.createdAt == e2?.createdAt &&
        e1?.role == e2?.role &&
        e1?.content == e2?.content &&
        e1?.image == e2?.image &&
        e1?.imagePrompt == e2?.imagePrompt &&
        e1?.initialMessage == e2?.initialMessage &&
        e1?.assistantMessage == e2?.assistantMessage;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.messageId,
        e?.isImage,
        e?.createdAt,
        e?.role,
        e?.content,
        e?.image,
        e?.imagePrompt,
        e?.initialMessage,
        e?.assistantMessage
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
