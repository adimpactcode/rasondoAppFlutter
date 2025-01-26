import '/components/profile_card2/profile_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grid_gallery_home_model.dart';
export 'grid_gallery_home_model.dart';

class GridGalleryHomeWidget extends StatefulWidget {
  /// create a modern grid with 4 Coloums and 4 Rows. The grid should have space
  /// for 4:3 product cards
  const GridGalleryHomeWidget({super.key});

  @override
  State<GridGalleryHomeWidget> createState() => _GridGalleryHomeWidgetState();
}

class _GridGalleryHomeWidgetState extends State<GridGalleryHomeWidget> {
  late GridGalleryHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridGalleryHomeModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model1,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model2,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model3,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model4,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model5,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model6,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model7,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model8,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model9,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model10,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model11,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model12,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model13,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model14,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model15,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.profileCard2Model16,
                            updateCallback: () => safeSetState(() {}),
                            child: ProfileCard2Widget(),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
