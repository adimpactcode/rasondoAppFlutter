import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_widget.dart' show ExploreWidget;
import 'package:flutter/material.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // State field(s) for TabBarMobile widget.
  TabController? tabBarMobileController;
  int get tabBarMobileCurrentIndex =>
      tabBarMobileController != null ? tabBarMobileController!.index : 0;

  // State field(s) for TabBarDesktop widget.
  TabController? tabBarDesktopController;
  int get tabBarDesktopCurrentIndex =>
      tabBarDesktopController != null ? tabBarDesktopController!.index : 0;

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
    tabBarMobileController?.dispose();
    tabBarDesktopController?.dispose();
    buttonPinkModel2.dispose();
  }
}
