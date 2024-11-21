import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'verifivation_page_model.dart';
export 'verifivation_page_model.dart';

class VerifivationPageWidget extends StatefulWidget {
  const VerifivationPageWidget({super.key});

  @override
  State<VerifivationPageWidget> createState() => _VerifivationPageWidgetState();
}

class _VerifivationPageWidgetState extends State<VerifivationPageWidget> {
  late VerifivationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifivationPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await authManager.refreshUser();
      await Future.delayed(const Duration(milliseconds: 10000));
      if (currentUserEmailVerified == true) {
        context.pushNamed(
          'auth_2_profil',
          queryParameters: {
            'profileReference': serializeParam(
              currentUserReference,
              ParamType.DocumentReference,
            ),
          }.withoutNulls,
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'VerifivationPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(80.0, 70.0, 0.0, 32.0),
                      child: Container(
                        width: 400.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Rasondo_(18).png',
                                  width: 200.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 0.0, 25.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 44.0,
                                fillColor: const Color(0x00C6408C),
                                icon: Icon(
                                  Icons.close,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 36.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('Home');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 570.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                32.0, 20.0, 32.0, 32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (currentUserEmailVerified == false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        FFLocalizations.of(context).getText(
                                          '07fswjsc' /* E-Mail verifizieren */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (currentUserEmailVerified == true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        FFLocalizations.of(context).getText(
                                          '2v4mnfzq' /* Registrierung erfolgreich */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (currentUserEmailVerified == false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 50.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        FFLocalizations.of(context).getText(
                                          'lmnte0sz' /* Vielen Dank für Ihre Registrie... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (currentUserEmailVerified == true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 50.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        FFLocalizations.of(context).getText(
                                          'eh3u4p8c' /* Ihre E-Mail-Adresse wurde erfo... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (currentUserEmailVerified == false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 50.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        FFLocalizations.of(context).getText(
                                          '9kc5uqfo' /* Sollten Sie keine E-Mail erhal... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (currentUserEmailVerified == false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => FFButtonWidget(
                                        onPressed: () async {
                                          await authManager
                                              .sendEmailVerification();
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '8dxodi1o' /* E-Mail erneut senden */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 44.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
