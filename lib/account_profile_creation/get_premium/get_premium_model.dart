import '/backend/api_requests/api_calls.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'get_premium_widget.dart' show GetPremiumWidget;
import 'package:flutter/material.dart';

class GetPremiumModel extends FlutterFlowModel<GetPremiumWidget> {
  ///  Local state fields for this page.

  String premiumChoice = 'premiumChoice';

  DocumentReference? userId;

  ///  State fields for stateful widgets in this page.

  // Model for buttonPink component.
  late ButtonPinkModel buttonPinkModel1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (subscriptionCallPaypal)] action in Button widget.
  ApiCallResponse? paypalUrl;
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
