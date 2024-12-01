import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_pro_widget.dart' show ChatPageProWidget;
import 'package:flutter/material.dart';

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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in chatPagePro widget.
  CharactersMainRecord? characterDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in chatPagePro widget.
  ChatsRecord? doesChatExist;
  // Stores action output result for [Firestore Query - Query a collection] action in chatPagePro widget.
  List<MessagesRecord>? oldMessages;
  // Stores action output result for [Backend Call - Create Document] action in chatPagePro widget.
  ChatsRecord? newChatId;
  // Stores action output result for [Backend Call - API (novitaFunctionLLM)] action in chatPagePro widget.
  ApiCallResponse? apiLlmPageload;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  MessagesRecord? currentUserMessage;
  // Stores action output result for [Backend Call - API (novitaFunctionLLM)] action in IconButton widget.
  ApiCallResponse? apiResultmlu;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
