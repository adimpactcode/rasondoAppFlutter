import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'image_to_image_widget.dart' show ImageToImageWidget;
import 'package:flutter/material.dart';

class ImageToImageModel extends FlutterFlowModel<ImageToImageWidget> {
  ///  Local state fields for this page.

  String? imgToimgAppearance = 'Same person in a different outfit';

  String? imgToimgAmbiente = 'Same Person in a different location';

  String characterId = 'characterId';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for img2imgChangeAppereance widget.
  FocusNode? img2imgChangeAppereanceFocusNode;
  TextEditingController? img2imgChangeAppereanceTextController;
  String? Function(BuildContext, String?)?
      img2imgChangeAppereanceTextControllerValidator;
  // State field(s) for img2imgChangeAmbiente widget.
  FocusNode? img2imgChangeAmbienteFocusNode;
  TextEditingController? img2imgChangeAmbienteTextController;
  String? Function(BuildContext, String?)?
      img2imgChangeAmbienteTextControllerValidator;
  // Stores action output result for [Backend Call - API (novitaFunctionImageToImage)] action in Button widget.
  ApiCallResponse? newGeneratedImgUrl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    img2imgChangeAppereanceFocusNode?.dispose();
    img2imgChangeAppereanceTextController?.dispose();

    img2imgChangeAmbienteFocusNode?.dispose();
    img2imgChangeAmbienteTextController?.dispose();
  }
}
