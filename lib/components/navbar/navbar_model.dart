import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'navbar_widget.dart' show NavbarWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
