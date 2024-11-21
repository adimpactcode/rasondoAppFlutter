import '/backend/api_requests/api_calls.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chats_widget.dart' show ChatsWidget;
import 'package:flutter/material.dart';

class ChatsModel extends FlutterFlowModel<ChatsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (deleteChatsWithDeletedCharacters)] action in Chats widget.
  ApiCallResponse? apiResultpl9;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel2;

  @override
  void initState(BuildContext context) {
    buttonPinkModel1 = createModel(context, () => ButtonPinkModel());
    buttonPinkModel2 = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    buttonPinkModel1.dispose();
    buttonPinkModel2.dispose();
  }
}
