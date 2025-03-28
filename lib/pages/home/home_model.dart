import '';
import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/components/cookie_banner_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_mobile/footer_mobile_widget.dart';
import '/components/social_proof_avatars/social_proof_avatars_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
  // Model for SocialProofAvatars component.
  late SocialProofAvatarsModel socialProofAvatarsModel;
  // Model for FooterDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel;

  @override
  void initState(BuildContext context) {
    socialProofAvatarsModel =
        createModel(context, () => SocialProofAvatarsModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    buttonPinkModel = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    socialProofAvatarsModel.dispose();
    footerDesktopModel.dispose();
    footerMobileModel.dispose();
    buttonPinkModel.dispose();
  }
}
