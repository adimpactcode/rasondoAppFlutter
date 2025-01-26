import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'statement_row_model.dart';
export 'statement_row_model.dart';

class StatementRowWidget extends StatefulWidget {
  /// Please Create Row with 4 Statement Label and above of the for each
  /// statement an ICON.
  const StatementRowWidget({super.key});

  @override
  State<StatementRowWidget> createState() => _StatementRowWidgetState();
}

class _StatementRowWidgetState extends State<StatementRowWidget> {
  late StatementRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatementRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.wine_bar,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'e0hb15lz' /* Growth */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_awesome,
              color: FlutterFlowTheme.of(context).success,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'q9227s4j' /* Revenue */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.local_fire_department,
              color: FlutterFlowTheme.of(context).accent3,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'bk0ttpsc' /* Users */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.solidKissWinkHeart,
              color: FlutterFlowTheme.of(context).warning,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'u3fk8ldn' /* Rating */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
