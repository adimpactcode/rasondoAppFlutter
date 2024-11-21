import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'button_pink_medium_copy_model.dart';
export 'button_pink_medium_copy_model.dart';

class ButtonPinkMediumCopyWidget extends StatefulWidget {
  const ButtonPinkMediumCopyWidget({super.key});

  @override
  State<ButtonPinkMediumCopyWidget> createState() =>
      _ButtonPinkMediumCopyWidgetState();
}

class _ButtonPinkMediumCopyWidgetState
    extends State<ButtonPinkMediumCopyWidget> {
  late ButtonPinkMediumCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonPinkMediumCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {
          print('ButtonPinkStrokeMedium pressed ...');
        },
        text: FFLocalizations.of(context).getText(
          'wdac853z' /* Kostenlos Registrieren */,
        ),
        options: FFButtonOptions(
          width: 220.0,
          height: 60.0,
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: const Color(0x00FFFFFF),
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: FlutterFlowTheme.of(context).primary,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
