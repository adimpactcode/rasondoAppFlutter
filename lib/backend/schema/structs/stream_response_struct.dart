// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StreamResponseStruct extends FFFirebaseStruct {
  StreamResponseStruct({
    int? createdAt,
    String? assistantMessage,
    List<ChoicesStruct>? choices,
    String? newChunk,
    List<ChunksStruct>? chunks,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdAt = createdAt,
        _assistantMessage = assistantMessage,
        _choices = choices,
        _newChunk = newChunk,
        _chunks = chunks,
        super(firestoreUtilData);

  // "createdAt" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "assistantMessage" field.
  String? _assistantMessage;
  String get assistantMessage => _assistantMessage ?? '';
  set assistantMessage(String? val) => _assistantMessage = val;

  bool hasAssistantMessage() => _assistantMessage != null;

  // "choices" field.
  List<ChoicesStruct>? _choices;
  List<ChoicesStruct> get choices => _choices ?? const [];
  set choices(List<ChoicesStruct>? val) => _choices = val;

  void updateChoices(Function(List<ChoicesStruct>) updateFn) {
    updateFn(_choices ??= []);
  }

  bool hasChoices() => _choices != null;

  // "newChunk" field.
  String? _newChunk;
  String get newChunk => _newChunk ?? '';
  set newChunk(String? val) => _newChunk = val;

  bool hasNewChunk() => _newChunk != null;

  // "chunks" field.
  List<ChunksStruct>? _chunks;
  List<ChunksStruct> get chunks => _chunks ?? const [];
  set chunks(List<ChunksStruct>? val) => _chunks = val;

  void updateChunks(Function(List<ChunksStruct>) updateFn) {
    updateFn(_chunks ??= []);
  }

  bool hasChunks() => _chunks != null;

  static StreamResponseStruct fromMap(Map<String, dynamic> data) =>
      StreamResponseStruct(
        createdAt: castToType<int>(data['createdAt']),
        assistantMessage: data['assistantMessage'] as String?,
        choices: getStructList(
          data['choices'],
          ChoicesStruct.fromMap,
        ),
        newChunk: data['newChunk'] as String?,
        chunks: getStructList(
          data['chunks'],
          ChunksStruct.fromMap,
        ),
      );

  static StreamResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? StreamResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'createdAt': _createdAt,
        'assistantMessage': _assistantMessage,
        'choices': _choices?.map((e) => e.toMap()).toList(),
        'newChunk': _newChunk,
        'chunks': _chunks?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'createdAt': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'assistantMessage': serializeParam(
          _assistantMessage,
          ParamType.String,
        ),
        'choices': serializeParam(
          _choices,
          ParamType.DataStruct,
          isList: true,
        ),
        'newChunk': serializeParam(
          _newChunk,
          ParamType.String,
        ),
        'chunks': serializeParam(
          _chunks,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static StreamResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      StreamResponseStruct(
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.int,
          false,
        ),
        assistantMessage: deserializeParam(
          data['assistantMessage'],
          ParamType.String,
          false,
        ),
        choices: deserializeStructParam<ChoicesStruct>(
          data['choices'],
          ParamType.DataStruct,
          true,
          structBuilder: ChoicesStruct.fromSerializableMap,
        ),
        newChunk: deserializeParam(
          data['newChunk'],
          ParamType.String,
          false,
        ),
        chunks: deserializeStructParam<ChunksStruct>(
          data['chunks'],
          ParamType.DataStruct,
          true,
          structBuilder: ChunksStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StreamResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StreamResponseStruct &&
        createdAt == other.createdAt &&
        assistantMessage == other.assistantMessage &&
        listEquality.equals(choices, other.choices) &&
        newChunk == other.newChunk &&
        listEquality.equals(chunks, other.chunks);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([createdAt, assistantMessage, choices, newChunk, chunks]);
}

StreamResponseStruct createStreamResponseStruct({
  int? createdAt,
  String? assistantMessage,
  String? newChunk,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StreamResponseStruct(
      createdAt: createdAt,
      assistantMessage: assistantMessage,
      newChunk: newChunk,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StreamResponseStruct? updateStreamResponseStruct(
  StreamResponseStruct? streamResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    streamResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStreamResponseStructData(
  Map<String, dynamic> firestoreData,
  StreamResponseStruct? streamResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (streamResponse == null) {
    return;
  }
  if (streamResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && streamResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final streamResponseData =
      getStreamResponseFirestoreData(streamResponse, forFieldValue);
  final nestedData =
      streamResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = streamResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStreamResponseFirestoreData(
  StreamResponseStruct? streamResponse, [
  bool forFieldValue = false,
]) {
  if (streamResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(streamResponse.toMap());

  // Add any Firestore field values
  streamResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStreamResponseListFirestoreData(
  List<StreamResponseStruct>? streamResponses,
) =>
    streamResponses
        ?.map((e) => getStreamResponseFirestoreData(e, true))
        .toList() ??
    [];
