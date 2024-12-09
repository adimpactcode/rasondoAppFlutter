import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sidebar_mobile_widget.dart' show SidebarMobileWidget;
import 'package:flutter/material.dart';

class SidebarMobileModel extends FlutterFlowModel<SidebarMobileWidget> {
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
