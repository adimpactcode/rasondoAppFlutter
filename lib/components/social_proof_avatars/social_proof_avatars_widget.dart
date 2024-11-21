import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'social_proof_avatars_model.dart';
export 'social_proof_avatars_model.dart';

class SocialProofAvatarsWidget extends StatefulWidget {
  /// please create a SocialProof widget with 6 round avatar profiles that are
  /// slightly stacked on top of each other. next to it a star rating and below
  /// a statement
  const SocialProofAvatarsWidget({super.key});

  @override
  State<SocialProofAvatarsWidget> createState() =>
      _SocialProofAvatarsWidgetState();
}

class _SocialProofAvatarsWidgetState extends State<SocialProofAvatarsWidget> {
  late SocialProofAvatarsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialProofAvatarsModel());

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 180.0,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.5,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1552225397-42372c818423?w=200&h=200',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.6, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1588326868601-4fb8767e456b?w=200&h=200',
                      width: 40.0,
                      height: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.3, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1581342997365-9e7cadb47edb?w=200&h=200',
                      width: 40.0,
                      height: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1702942568346-ae74cfeee7bb?w=200&h=200',
                      width: 40.0,
                      height: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.3, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1537212965191-3a8f7994fc96?w=200&h=200',
                      width: 40.0,
                      height: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.6, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1724491216540-a5aa0a3c27d5?w=200&h=200',
                      width: 40.0,
                      height: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFFD700),
                  size: 24.0,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFFD700),
                  size: 24.0,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFFD700),
                  size: 24.0,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFFD700),
                  size: 24.0,
                ),
                const Icon(
                  Icons.star_half_rounded,
                  color: Color(0xFFFFD700),
                  size: 24.0,
                ),
              ].divide(const SizedBox(width: 4.0)),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '5n5ty6ds' /* +10000 nutzende Kunden */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ].divide(const SizedBox(height: 7.0)),
        ),
      ].divide(const SizedBox(width: 16.0)),
    );
  }
}
