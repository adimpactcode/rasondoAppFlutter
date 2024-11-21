import '/backend/backend.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_mobile/footer_mobile_widget.dart';
import '/components/social_proof_avatars/social_proof_avatars_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<CharactersMainRecord> mainGridDisplay = [];
  void addToMainGridDisplay(CharactersMainRecord item) =>
      mainGridDisplay.add(item);
  void removeFromMainGridDisplay(CharactersMainRecord item) =>
      mainGridDisplay.remove(item);
  void removeAtIndexFromMainGridDisplay(int index) =>
      mainGridDisplay.removeAt(index);
  void insertAtIndexInMainGridDisplay(int index, CharactersMainRecord item) =>
      mainGridDisplay.insert(index, item);
  void updateMainGridDisplayAtIndex(
          int index, Function(CharactersMainRecord) updateFn) =>
      mainGridDisplay[index] = updateFn(mainGridDisplay[index]);

  String ctaGridPicture =
      'https://firebasestorage.googleapis.com/v0/b/rasondo-v3-wpjwei.appspot.com/o/ctaGridPicture2.png?alt=media&token=386de23b-98bc-43dc-80cf-41b770c5e61b';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Home widget.
  List<CharactersMainRecord>? loggedInUserGrid;
  // Stores action output result for [Firestore Query - Query a collection] action in Home widget.
  List<CharactersMainRecord>? notloggedInUserGrid;
  // Stores action output result for [Firestore Query - Query a collection] action in Home widget.
  CharactersMainRecord? ctaGrid;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // Model for SocialProofAvatars component.
  late SocialProofAvatarsModel socialProofAvatarsModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // Model for FooterDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel2;

  @override
  void initState(BuildContext context) {
    buttonPinkModel1 = createModel(context, () => ButtonPinkModel());
    socialProofAvatarsModel =
        createModel(context, () => SocialProofAvatarsModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    buttonPinkModel2 = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    buttonPinkModel1.dispose();
    socialProofAvatarsModel.dispose();
    footerDesktopModel.dispose();
    footerMobileModel.dispose();
    buttonPinkModel2.dispose();
  }
}
