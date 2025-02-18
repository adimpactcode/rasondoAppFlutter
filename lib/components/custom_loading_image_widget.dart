import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'custom_loading_image_model.dart';
export 'custom_loading_image_model.dart';

class CustomLoadingImageWidget extends StatefulWidget {
  const CustomLoadingImageWidget({super.key});

  @override
  State<CustomLoadingImageWidget> createState() =>
      _CustomLoadingImageWidgetState();
}

class _CustomLoadingImageWidgetState extends State<CustomLoadingImageWidget> {
  late CustomLoadingImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomLoadingImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.95,
          height: MediaQuery.sizeOf(context).height * 0.95,
          decoration: BoxDecoration(
            color: Color(0x94040404),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/Animation_-_1739898622365.json',
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              ),
              Flexible(
                child: AnimatedDefaultTextStyle(
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                  duration: Duration(milliseconds: 600),
                  curve: Curves.linear,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'xglwufyp' /* Bild wird erstellt */,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
