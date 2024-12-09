import '/components/button_pink/button_pink_widget.dart';
import '/components/navbar_mobile/navbar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'allgemeine_geschftsbedingungen_widget.dart'
    show AllgemeineGeschftsbedingungenWidget;
import 'package:flutter/material.dart';

class AllgemeineGeschftsbedingungenModel
    extends FlutterFlowModel<AllgemeineGeschftsbedingungenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel;
  // Model for navbarMobile component.
  late NavbarMobileModel navbarMobileModel;

  @override
  void initState(BuildContext context) {
    buttonPinkModel = createModel(context, () => ButtonPinkModel());
    navbarMobileModel = createModel(context, () => NavbarMobileModel());
  }

  @override
  void dispose() {
    buttonPinkModel.dispose();
    navbarMobileModel.dispose();
  }
}
