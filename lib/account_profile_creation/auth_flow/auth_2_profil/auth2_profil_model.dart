import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_profil_widget.dart' show Auth2ProfilWidget;
import 'package:flutter/material.dart';

class Auth2ProfilModel extends FlutterFlowModel<Auth2ProfilWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - API (subscriptionCallPaypal)] action in Container widget.
  ApiCallResponse? apiResult3fj;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
