import '/auth/firebase_auth/auth_util.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'sidebar_mobile_widget.dart' show SidebarMobileWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
