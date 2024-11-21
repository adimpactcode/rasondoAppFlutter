import '/components/button_pink/button_pink_widget.dart';
import '/components/navbar_mobile/navbar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'impressum_widget.dart' show ImpressumWidget;
import 'package:flutter/material.dart';

class ImpressumModel extends FlutterFlowModel<ImpressumWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // Model for navbarMobile component.
  late NavbarMobileModel navbarMobileModel;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel2;

  @override
  void initState(BuildContext context) {
    buttonPinkModel1 = createModel(context, () => ButtonPinkModel());
    navbarMobileModel = createModel(context, () => NavbarMobileModel());
    buttonPinkModel2 = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    buttonPinkModel1.dispose();
    navbarMobileModel.dispose();
    buttonPinkModel2.dispose();
  }
}
