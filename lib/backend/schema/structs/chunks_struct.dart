// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChunksStruct extends FFFirebaseStruct {
  ChunksStruct({
    String? newChunk,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _newChunk = newChunk,
        super(firestoreUtilData);

  // "newChunk" field.
  String? _newChunk;
  String get newChunk => _newChunk ?? '';
  set newChunk(String? val) => _newChunk = val;

  bool hasNewChunk() => _newChunk != null;

  static ChunksStruct fromMap(Map<String, dynamic> data) => ChunksStruct(
        newChunk: data['newChunk'] as String?,
      );

  static ChunksStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChunksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'newChunk': _newChunk,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'newChunk': serializeParam(
          _newChunk,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChunksStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChunksStruct(
        newChunk: deserializeParam(
          data['newChunk'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChunksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChunksStruct && newChunk == other.newChunk;
  }

  @override
  int get hashCode => const ListEquality().hash([newChunk]);
}

ChunksStruct createChunksStruct({
  String? newChunk,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChunksStruct(
      newChunk: newChunk,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChunksStruct? updateChunksStruct(
  ChunksStruct? chunks, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chunks
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChunksStructData(
  Map<String, dynamic> firestoreData,
  ChunksStruct? chunks,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chunks == null) {
    return;
  }
  if (chunks.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chunks.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chunksData = getChunksFirestoreData(chunks, forFieldValue);
  final nestedData = chunksData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chunks.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChunksFirestoreData(
  ChunksStruct? chunks, [
  bool forFieldValue = false,
]) {
  if (chunks == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chunks.toMap());

  // Add any Firestore field values
  chunks.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChunksListFirestoreData(
  List<ChunksStruct>? chunkss,
) =>
    chunkss?.map((e) => getChunksFirestoreData(e, true)).toList() ?? [];
