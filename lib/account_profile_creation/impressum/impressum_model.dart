import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/components/navbar_mobile/navbar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'impressum_widget.dart' show ImpressumWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ImpressumModel extends FlutterFlowModel<ImpressumWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbarMobile component.
  late NavbarMobileModel navbarMobileModel;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel;

  @override
  void initState(BuildContext context) {
    navbarMobileModel = createModel(context, () => NavbarMobileModel());
    buttonPinkModel = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    navbarMobileModel.dispose();
    buttonPinkModel.dispose();
  }
}
