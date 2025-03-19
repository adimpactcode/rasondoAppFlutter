import '';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_streaming.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/message_limit_c_t_a_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'chat_page_pro_widget.dart' show ChatPageProWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatPageProModel extends FlutterFlowModel<ChatPageProWidget> {
  ///  Local state fields for this page.

  List<MessagesStruct> message = [];
  void addToMessage(MessagesStruct item) => message.add(item);
  void removeFromMessage(MessagesStruct item) => message.remove(item);
  void removeAtIndexFromMessage(int index) => message.removeAt(index);
  void insertAtIndexInMessage(int index, MessagesStruct item) =>
      message.insert(index, item);
  void updateMessageAtIndex(int index, Function(MessagesStruct) updateFn) =>
      message[index] = updateFn(message[index]);

  String? userInput;

  String? userId;

  String? characterId;

  int? messageCount;

  List<String> lastMessages = [];
  void addToLastMessages(String item) => lastMessages.add(item);
  void removeFromLastMessages(String item) => lastMessages.remove(item);
  void removeAtIndexFromLastMessages(int index) => lastMessages.removeAt(index);
  void insertAtIndexInLastMessages(int index, String item) =>
      lastMessages.insert(index, item);
  void updateLastMessagesAtIndex(int index, Function(String) updateFn) =>
      lastMessages[index] = updateFn(lastMessages[index]);

  String? initialMessage;

  bool isAssistantLoading = false;

  bool submitUserInputAPI = false;

  bool isFirstChunk = true;

  List<String> currentChunks = [];
  void addToCurrentChunks(String item) => currentChunks.add(item);
  void removeFromCurrentChunks(String item) => currentChunks.remove(item);
  void removeAtIndexFromCurrentChunks(int index) =>
      currentChunks.removeAt(index);
  void insertAtIndexInCurrentChunks(int index, String item) =>
      currentChunks.insert(index, item);
  void updateCurrentChunksAtIndex(int index, Function(String) updateFn) =>
      currentChunks[index] = updateFn(currentChunks[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in chatPagePro widget.
  ChatsRecord? doesChatExist;
  // Stores action output result for [Firestore Query - Query a collection] action in chatPagePro widget.
  List<MessagesRecord>? oldMessages;
  // Stores action output result for [Backend Call - Create Document] action in chatPagePro widget.
  ChatsRecord? newChatId;
  // Stores action output result for [Backend Call - API (novitaFunctionLLM)] action in chatPagePro widget.
  ApiCallResponse? apiLlmPageload;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? streamUserMessageOnSubmit;
  // Stores action output result for [Backend Call - API (novitaFunctionLLMStream)] action in TextField widget.
  ApiCallResponse? streamCallResultOnSubmit;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? createDocumentCopy;
  // Stores action output result for [Backend Call - Create Document] action in streamButton widget.
  MessagesRecord? streamUserMessage;
  // Stores action output result for [Backend Call - API (novitaFunctionLLMStream)] action in streamButton widget.
  ApiCallResponse? streamCallResult;
  // Stores action output result for [Backend Call - Create Document] action in streamButton widget.
  MessagesRecord? createDocument;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
