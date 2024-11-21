import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'navbar_widget.dart' show NavbarWidget;
import 'package:flutter/material.dart';

class NavbarModel extends FlutterFlowModel<NavbarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel;

  @override
  void initState(BuildContext context) {
    buttonPinkModel = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    buttonPinkModel.dispose();
  }
}
