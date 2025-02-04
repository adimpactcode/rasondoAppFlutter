import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'statement_bar_model.dart';
export 'statement_bar_model.dart';

/// Please create a Row with 4 Statment Labels and 4 Icons above of them
/// representing the Label.
///
/// The icon should be a trophy, a flame, lips and a magic wand
class StatementBarWidget extends StatefulWidget {
  const StatementBarWidget({super.key});

  @override
  State<StatementBarWidget> createState() => _StatementBarWidgetState();
}

class _StatementBarWidgetState extends State<StatementBarWidget> {
  late StatementBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatementBarModel());

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
              Icons.emoji_events,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'ae6ts1qm' /* Wins */,
              ),
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
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'ol9ojtkm' /* Streaks */,
              ),
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
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                '2ssuyxem' /* Likes */,
              ),
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
              Icons.favorite,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'n4g5hjw5' /* Magic */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ],
    );
  }
}
