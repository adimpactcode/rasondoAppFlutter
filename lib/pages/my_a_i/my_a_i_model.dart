import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_a_i_widget.dart' show MyAIWidget;
import 'package:flutter/material.dart';

class MyAIModel extends FlutterFlowModel<MyAIWidget> {
  ///  State fields for stateful widgets in this page.

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
