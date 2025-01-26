import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_pink_medium_model.dart';
export 'button_pink_medium_model.dart';

class ButtonPinkMediumWidget extends StatefulWidget {
  const ButtonPinkMediumWidget({super.key});

  @override
  State<ButtonPinkMediumWidget> createState() => _ButtonPinkMediumWidgetState();
}

class _ButtonPinkMediumWidgetState extends State<ButtonPinkMediumWidget> {
  late ButtonPinkMediumModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonPinkMediumModel());

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
        context.pushNamed('Create');
      },
      text: FFLocalizations.of(context).getText(
        '96b8bg4d' /* Jetzt AI partner erstellen!
 */
        ,
      ),
      options: FFButtonOptions(
        width: 230.0,
        height: 60.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: FlutterFlowTheme.of(context).secondary,
              fontSize: 18.0,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}
