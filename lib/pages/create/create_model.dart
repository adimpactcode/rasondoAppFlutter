import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_streaming.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/components/choose_button_transparent/choose_button_transparent_widget.dart';
import '/components/create_character_limit_c_t_a_widget.dart';
import '/components/custom_loading_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'create_widget.dart' show CreateWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateModel extends FlutterFlowModel<CreateWidget> {
  ///  Local state fields for this page.

  bool makeItPublic = false;

  CharacterFullStruct? characterFull;
  void updateCharacterFullStruct(Function(CharacterFullStruct) updateFn) {
    updateFn(characterFull ??= CharacterFullStruct());
  }

  CharacterAppearanceStruct? characterAppereance;
  void updateCharacterAppereanceStruct(
      Function(CharacterAppearanceStruct) updateFn) {
    updateFn(characterAppereance ??= CharacterAppearanceStruct());
  }

  CharacterPersonalityStruct? characterPersonality;
  void updateCharacterPersonalityStruct(
      Function(CharacterPersonalityStruct) updateFn) {
    updateFn(characterPersonality ??= CharacterPersonalityStruct());
  }

  int? createdCharacterCount;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final formKey6 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for chooseButtonTransparent component.
  late ChooseButtonTransparentModel chooseButtonTransparentModel;
  // State field(s) for ChoiceChipsGender widget.
  FormFieldController<List<String>>? choiceChipsGenderValueController;
  String? get choiceChipsGenderValue =>
      choiceChipsGenderValueController?.value?.firstOrNull;
  set choiceChipsGenderValue(String? val) =>
      choiceChipsGenderValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsAge widget.
  FormFieldController<List<String>>? choiceChipsAgeValueController;
  String? get choiceChipsAgeValue =>
      choiceChipsAgeValueController?.value?.firstOrNull;
  set choiceChipsAgeValue(String? val) =>
      choiceChipsAgeValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsHairstyle widget.
  FormFieldController<List<String>>? choiceChipsHairstyleValueController;
  String? get choiceChipsHairstyleValue =>
      choiceChipsHairstyleValueController?.value?.firstOrNull;
  set choiceChipsHairstyleValue(String? val) =>
      choiceChipsHairstyleValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsHairstyleAnime widget.
  FormFieldController<List<String>>? choiceChipsHairstyleAnimeValueController;
  String? get choiceChipsHairstyleAnimeValue =>
      choiceChipsHairstyleAnimeValueController?.value?.firstOrNull;
  set choiceChipsHairstyleAnimeValue(String? val) =>
      choiceChipsHairstyleAnimeValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsAccessoires widget.
  FormFieldController<List<String>>? choiceChipsAccessoiresValueController;
  String? get choiceChipsAccessoiresValue =>
      choiceChipsAccessoiresValueController?.value?.firstOrNull;
  set choiceChipsAccessoiresValue(String? val) =>
      choiceChipsAccessoiresValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsClothing widget.
  FormFieldController<List<String>>? choiceChipsClothingValueController;
  String? get choiceChipsClothingValue =>
      choiceChipsClothingValueController?.value?.firstOrNull;
  set choiceChipsClothingValue(String? val) =>
      choiceChipsClothingValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsClothingAnime widget.
  FormFieldController<List<String>>? choiceChipsClothingAnimeValueController;
  String? get choiceChipsClothingAnimeValue =>
      choiceChipsClothingAnimeValueController?.value?.firstOrNull;
  set choiceChipsClothingAnimeValue(String? val) =>
      choiceChipsClothingAnimeValueController?.value = val != null ? [val] : [];
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for ChoiceChipsCharacter widget.
  FormFieldController<List<String>>? choiceChipsCharacterValueController;
  String? get choiceChipsCharacterValue =>
      choiceChipsCharacterValueController?.value?.firstOrNull;
  set choiceChipsCharacterValue(String? val) =>
      choiceChipsCharacterValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsCharacterAnime widget.
  FormFieldController<List<String>>? choiceChipsCharacterAnimeValueController;
  String? get choiceChipsCharacterAnimeValue =>
      choiceChipsCharacterAnimeValueController?.value?.firstOrNull;
  set choiceChipsCharacterAnimeValue(String? val) =>
      choiceChipsCharacterAnimeValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsPersonality widget.
  FormFieldController<List<String>>? choiceChipsPersonalityValueController;
  String? get choiceChipsPersonalityValue =>
      choiceChipsPersonalityValueController?.value?.firstOrNull;
  set choiceChipsPersonalityValue(String? val) =>
      choiceChipsPersonalityValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsPersonalityAnime widget.
  FormFieldController<List<String>>? choiceChipsPersonalityAnimeValueController;
  String? get choiceChipsPersonalityAnimeValue =>
      choiceChipsPersonalityAnimeValueController?.value?.firstOrNull;
  set choiceChipsPersonalityAnimeValue(String? val) =>
      choiceChipsPersonalityAnimeValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsVoiceTon widget.
  FormFieldController<List<String>>? choiceChipsVoiceTonValueController;
  String? get choiceChipsVoiceTonValue =>
      choiceChipsVoiceTonValueController?.value?.firstOrNull;
  set choiceChipsVoiceTonValue(String? val) =>
      choiceChipsVoiceTonValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsVoiceTonAnime widget.
  FormFieldController<List<String>>? choiceChipsVoiceTonAnimeValueController;
  String? get choiceChipsVoiceTonAnimeValue =>
      choiceChipsVoiceTonAnimeValueController?.value?.firstOrNull;
  set choiceChipsVoiceTonAnimeValue(String? val) =>
      choiceChipsVoiceTonAnimeValueController?.value = val != null ? [val] : [];
  // State field(s) for textfieldJob widget.
  FocusNode? textfieldJobFocusNode;
  TextEditingController? textfieldJobTextController;
  String? Function(BuildContext, String?)? textfieldJobTextControllerValidator;
  // State field(s) for ChoiceChipsintimBehaviour widget.
  FormFieldController<List<String>>? choiceChipsintimBehaviourValueController;
  String? get choiceChipsintimBehaviourValue =>
      choiceChipsintimBehaviourValueController?.value?.firstOrNull;
  set choiceChipsintimBehaviourValue(String? val) =>
      choiceChipsintimBehaviourValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsScenaries widget.
  FormFieldController<List<String>>? choiceChipsScenariesValueController;
  String? get choiceChipsScenariesValue =>
      choiceChipsScenariesValueController?.value?.firstOrNull;
  set choiceChipsScenariesValue(String? val) =>
      choiceChipsScenariesValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsScenariesAnime widget.
  FormFieldController<List<String>>? choiceChipsScenariesAnimeValueController;
  String? get choiceChipsScenariesAnimeValue =>
      choiceChipsScenariesAnimeValueController?.value?.firstOrNull;
  set choiceChipsScenariesAnimeValue(String? val) =>
      choiceChipsScenariesAnimeValueController?.value =
          val != null ? [val] : [];
  // State field(s) for oeffentlich widget.
  bool? oeffentlichValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CharactersMainRecord? createdCharacterId;
  // Stores action output result for [Backend Call - API (novitaFunctionTextToImage)] action in Button widget.
  ApiCallResponse? generatedImageUrl;
  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel2;

  @override
  void initState(BuildContext context) {
    buttonPinkModel1 = createModel(context, () => ButtonPinkModel());
    chooseButtonTransparentModel =
        createModel(context, () => ChooseButtonTransparentModel());
    buttonPinkModel2 = createModel(context, () => ButtonPinkModel());
  }

  @override
  void dispose() {
    buttonPinkModel1.dispose();
    chooseButtonTransparentModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    textfieldJobFocusNode?.dispose();
    textfieldJobTextController?.dispose();

    buttonPinkModel2.dispose();
  }
}
