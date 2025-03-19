import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_pink_model.dart';
export 'button_pink_model.dart';

class ButtonPinkWidget extends StatefulWidget {
  const ButtonPinkWidget({super.key});

  @override
  State<ButtonPinkWidget> createState() => _ButtonPinkWidgetState();
}

class _ButtonPinkWidgetState extends State<ButtonPinkWidget> {
  late ButtonPinkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonPinkModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        logFirebaseEvent('BUTTON_PINK_JETZT_KOSTENLOS_TESTEN_BTN_O');
        logFirebaseEvent('Button_navigate_to');

        context.pushNamed(Auth2CreateWidget.routeName);
      },
      text: FFLocalizations.of(context).getText(
        'p3o8plca' /* Jetzt kostenlos testen! */,
      ),
      options: FFButtonOptions(
        width: 220.0,
        height: 40.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: Color(0x00F2F2F2),
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
    );
  }
}
