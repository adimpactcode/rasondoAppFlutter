import '/backend/backend.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'character_profil_widget.dart' show CharacterProfilWidget;
import 'package:flutter/material.dart';

class CharacterProfilModel extends FlutterFlowModel<CharacterProfilWidget> {
  ///  Local state fields for this page.

  int? charcaterLikesCount;

  ///  State fields for stateful widgets in this page.

  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  CharacterLikesRecord? userLikeExist;
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
    buttonPinkModel2.dispose();
  }
}
