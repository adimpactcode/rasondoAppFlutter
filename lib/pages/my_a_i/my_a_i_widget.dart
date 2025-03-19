import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_a_i_model.dart';
export 'my_a_i_model.dart';

class MyAIWidget extends StatefulWidget {
  const MyAIWidget({super.key});

  static String routeName = 'MyAI';
  static String routePath = '/myAI';

  @override
  State<MyAIWidget> createState() => _MyAIWidgetState();
}

class _MyAIWidgetState extends State<MyAIWidget> {
  late MyAIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAIModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MyAI'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'MyAI',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'MY_A_I_PAGE_Image_x12l80qa_ON_TAP');
                                  logFirebaseEvent('Image_navigate_to');

                                  context.pushNamed(HomeWidget.routeName);
                                },
                                child: Image.asset(
                                  'assets/images/Rasondo_(18).png',
                                  width: 170.0,
                                  height: 60.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35.0, 0.0, 0.0, 10.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MY_A_I_PAGE_Icon_7zl8zkeg_ON_TAP');
                                    logFirebaseEvent('Icon_drawer');
                                    if (scaffoldKey
                                            .currentState!.isDrawerOpen ||
                                        scaffoldKey
                                            .currentState!.isEndDrawerOpen) {
                                      Navigator.pop(context);
                                    }
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 34.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 32.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MY_A_I_PAGE_Row_hwcuuny8_ON_TAP');
                              logFirebaseEvent('Row_navigate_to');

                              context.pushNamed(ExploreWidget.routeName);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.explore,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'fyu632vm' /* Explore */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MY_A_I_PAGE_Row_x2x8f9kk_ON_TAP');
                              if (loggedIn == true) {
                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamed(ChatsWidget.routeName);
                              } else {
                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamed(Auth2CreateWidget.routeName);
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.chat_bubble,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'b8bj46d0' /* Chats */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MY_A_I_PAGE_Row_5wv877ea_ON_TAP');
                              logFirebaseEvent('Row_navigate_to');

                              context.pushNamed(CreateWidget.routeName);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '31hxmk4h' /* Create AI */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MY_A_I_PAGE_Row_s4vrsosw_ON_TAP');
                              if (loggedIn == true) {
                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamed(MyAIWidget.routeName);
                              } else {
                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamed(Auth2CreateWidget.routeName);
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'qq1eb0s7' /* My AI */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 30.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                if (loggedIn == false)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 2.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'MY_A_I_PAGE_Container_g22v2z13_ON_TAP');
                                        logFirebaseEvent(
                                            'buttonPink_navigate_to');

                                        context.pushNamed(
                                            Auth2CreateWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.buttonPinkModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ButtonPinkWidget(),
                                      ),
                                    ),
                                  ),
                                if (valueOrDefault<bool>(
                                    currentUserDocument?.isPremium, false))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'MY_A_I_PAGE_PREMIUM_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                              GetPremiumWidget.routeName);
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'wrugfwh4' /* Premium */,
                                        ),
                                        icon: Icon(
                                          Icons.diamond_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 22.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          if ((loggedIn == true) &&
                              (currentUserEmailVerified == true))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MY_A_I_PAGE_Row_5y0g2bfc_ON_TAP');
                                    if (loggedIn == true) {
                                      logFirebaseEvent('Row_navigate_to');

                                      context.pushNamed(
                                        Auth2ProfilWidget.routeName,
                                        queryParameters: {
                                          'profileReference': serializeParam(
                                            currentUserReference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      logFirebaseEvent('Row_navigate_to');

                                      context.pushNamed(
                                          Auth2CreateWidget.routeName);
                                    }
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.person_2,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '3o6488n3' /* Profil */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 5.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'MY_A_I_PAGE_Row_0rnpvgdc_ON_TAP');
                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamed(
                                  Auth2ProfilWidget.routeName,
                                  queryParameters: {
                                    'profileReference': serializeParam(
                                      currentUserReference,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowLanguageSelector(
                                    width: 150.0,
                                    height: 40.0,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: 8.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    hideFlags: true,
                                    flagSize: 24.0,
                                    flagTextGap: 8.0,
                                    currentLanguage: FFLocalizations.of(context)
                                        .languageCode,
                                    languages: FFLocalizations.languages(),
                                    onChanged: (lang) =>
                                        setAppLanguage(context, lang),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                          if (loggedIn == false)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'MY_A_I_PAGE_Row_oszza9tx_ON_TAP');
                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamed(Auth2LoginWidget.routeName);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.login,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '4ifg9x7d' /* Login */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily),
                                        ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                          if (loggedIn == true)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'MY_A_I_PAGE_Row_1gt0iei3_ON_TAP');
                                logFirebaseEvent('Row_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                logFirebaseEvent('Row_navigate_to');

                                context.pushNamedAuth(
                                    HomeWidget.routeName, context.mounted);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.lock_outline,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '27gjs2ks' /* Logout */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily),
                                        ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 28.0,
                          ),
                          Icon(
                            Icons.discord,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 28.0,
                          ),
                        ].divide(SizedBox(width: 24.0)),
                      ),
                    ].divide(SizedBox(height: 40.0)),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Container(
                        width: double.infinity,
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MY_A_I_PAGE_Image_datwnpni_ON_TAP');
                                    logFirebaseEvent('Image_navigate_to');

                                    context.pushNamed(HomeWidget.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/Rasondo_(18).png',
                                    width: 200.0,
                                    height: 70.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'MY_A_I_PAGE_Row_j77z993e_ON_TAP');
                                            logFirebaseEvent('Row_navigate_to');

                                            context.pushNamed(
                                              ExploreWidget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              AlignedTooltip(
                                                content: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5mrtk0s5' /* Character entdecken */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                ),
                                                offset: 4.0,
                                                preferredDirection:
                                                    AxisDirection.down,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 4.0,
                                                tailBaseWidth: 24.0,
                                                tailLength: 12.0,
                                                waitDuration:
                                                    Duration(milliseconds: 100),
                                                showDuration:
                                                    Duration(milliseconds: 300),
                                                triggerMode:
                                                    TooltipTriggerMode.tap,
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_Icon_qgfa6jv3_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Icon_navigate_to');

                                                    context.pushNamed(
                                                        ExploreWidget
                                                            .routeName);
                                                  },
                                                  child: Icon(
                                                    Icons.explore,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'MY_A_I_PAGE_Row_76ann0lg_ON_TAP');
                                            logFirebaseEvent('Row_navigate_to');

                                            context.pushNamed(
                                                ChatsWidget.routeName);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              AlignedTooltip(
                                                content: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'msbmkd48' /* Chats */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                ),
                                                offset: 4.0,
                                                preferredDirection:
                                                    AxisDirection.down,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 4.0,
                                                tailBaseWidth: 24.0,
                                                tailLength: 12.0,
                                                waitDuration:
                                                    Duration(milliseconds: 100),
                                                showDuration:
                                                    Duration(milliseconds: 300),
                                                triggerMode:
                                                    TooltipTriggerMode.tap,
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_Icon_319pvdr0_ON_TAP');
                                                    if (loggedIn == true) {
                                                      logFirebaseEvent(
                                                          'Icon_navigate_to');

                                                      context.pushNamed(
                                                          ChatsWidget
                                                              .routeName);
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Icon_navigate_to');

                                                      context.pushNamed(
                                                          Auth2CreateWidget
                                                              .routeName);
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons.wechat_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'MY_A_I_PAGE_Row_lamwwciq_ON_TAP');
                                            logFirebaseEvent('Row_navigate_to');

                                            context.pushNamed(
                                                CreateWidget.routeName);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              AlignedTooltip(
                                                content: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'su19gi2u' /* Character erstellen */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                ),
                                                offset: 4.0,
                                                preferredDirection:
                                                    AxisDirection.down,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 4.0,
                                                tailBaseWidth: 24.0,
                                                tailLength: 12.0,
                                                waitDuration:
                                                    Duration(milliseconds: 100),
                                                showDuration:
                                                    Duration(milliseconds: 300),
                                                triggerMode:
                                                    TooltipTriggerMode.tap,
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_Icon_n5c2ylxw_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Icon_navigate_to');

                                                    context.pushNamed(
                                                        CreateWidget.routeName);
                                                  },
                                                  child: Icon(
                                                    Icons.add_circle,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 35.0)),
                                    ),
                                  ),
                                  AlignedTooltip(
                                    content: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'jv01ei5t' /* Message... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                      ),
                                    ),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.down,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: Duration(milliseconds: 100),
                                    showDuration: Duration(milliseconds: 300),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        icon: Icon(
                                          Icons.notifications,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                  ),
                                  AlignedTooltip(
                                    content: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'juml0b2z' /* Darkmodus */,
                                        ),
                                        style: TextStyle(),
                                      ),
                                    ),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.down,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: Duration(milliseconds: 100),
                                    showDuration: Duration(milliseconds: 300),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: ToggleIcon(
                                        onPressed: () async {
                                          safeSetState(() =>
                                              FFAppState().isLightMode =
                                                  !FFAppState().isLightMode);
                                          logFirebaseEvent(
                                              'MY_A_I_ToggleIcon_j9yrpqb7_ON_TOGGLE');
                                          if (Theme.of(context).brightness ==
                                              Brightness.dark) {
                                            logFirebaseEvent(
                                                'ToggleIcon_set_dark_mode_settings');
                                            setDarkModeSetting(
                                                context, ThemeMode.light);
                                          } else {
                                            logFirebaseEvent(
                                                'ToggleIcon_set_dark_mode_settings');
                                            setDarkModeSetting(
                                                context, ThemeMode.dark);
                                          }
                                        },
                                        value: FFAppState().isLightMode,
                                        onIcon: Icon(
                                          Icons.dark_mode,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.light_mode,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  AlignedTooltip(
                                    content: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ul7tztuj' /* User profil */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                      ),
                                    ),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.down,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: Duration(milliseconds: 100),
                                    showDuration: Duration(milliseconds: 300),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: Visibility(
                                      visible: (loggedIn == true) &&
                                          (currentUserEmailVerified == true),
                                      child: Opacity(
                                        opacity: 0.5,
                                        child: AuthUserStreamWidget(
                                          builder: (context) =>
                                              FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: Icon(
                                              Icons.person,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'MY_A_I_PAGE_person_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_navigate_to');

                                              context.pushNamed(
                                                Auth2ProfilWidget.routeName,
                                                queryParameters: {
                                                  'profileReference':
                                                      serializeParam(
                                                    currentUserReference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (loggedIn == false)
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'MY_A_I_PAGE_Container_8nxt0o97_ON_TAP');
                                        logFirebaseEvent(
                                            'buttonPink_navigate_to');

                                        context.pushNamed(
                                            Auth2CreateWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.buttonPinkModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ButtonPinkWidget(),
                                      ),
                                    ),
                                  if (loggedIn == false)
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'MY_A_I_PAGE_LOGIN_BTN_ON_TAP');
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed(
                                            Auth2LoginWidget.routeName);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'lfcp5xaf' /* Login */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'MY_A_I_PAGE_Icon_zdwrkke3_ON_TAP');
                                        logFirebaseEvent('Icon_drawer');
                                        scaffoldKey.currentState!.openDrawer();
                                      },
                                      child: Icon(
                                        Icons.menu_open,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 40.0,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                              ),
                              child: Visibility(
                                visible: (loggedIn == true) &&
                                    (currentUserEmailVerified == true),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_Container_6r9ix8cl_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Container_navigate_to');

                                                    context.pushNamed(
                                                      HomeWidget.routeName,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .bottomToTop,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 173.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/Rasondo_(18).png',
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child: ToggleIcon(
                                                      onPressed: () async {
                                                        safeSetState(() => FFAppState()
                                                                .ispublicState =
                                                            !FFAppState()
                                                                .ispublicState);
                                                        logFirebaseEvent(
                                                            'MY_A_I_ToggleIcon_le0ylqqb_ON_TOGGLE');
                                                        if (Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark) {
                                                          logFirebaseEvent(
                                                              'ToggleIcon_set_dark_mode_settings');
                                                          setDarkModeSetting(
                                                              context,
                                                              ThemeMode.light);
                                                        } else {
                                                          logFirebaseEvent(
                                                              'ToggleIcon_set_dark_mode_settings');
                                                          setDarkModeSetting(
                                                              context,
                                                              ThemeMode.dark);
                                                        }
                                                      },
                                                      value: FFAppState()
                                                          .ispublicState,
                                                      onIcon: Icon(
                                                        Icons
                                                            .dark_mode_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                      offIcon: Icon(
                                                        Icons.light_mode_sharp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        Icons.person,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'MY_A_I_PAGE_person_ICN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'IconButton_navigate_to');

                                                        context.pushNamed(
                                                          Auth2ProfilWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'profileReference':
                                                                serializeParam(
                                                              currentUserReference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        Icons.menu_open,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 28.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'MY_A_I_PAGE_menu_open_ICN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'IconButton_drawer');
                                                        scaffoldKey
                                                            .currentState!
                                                            .openDrawer();
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
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
                    if ((loggedIn == false) &&
                        responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'MY_A_I_PAGE_Container_hrmnynu4_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_navigate_to');

                                                context.pushNamed(
                                                  HomeWidget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .bottomToTop,
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Container(
                                                width: 173.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/Rasondo_(18).png',
                                                    ).image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Opacity(
                                                opacity: 0.5,
                                                child: ToggleIcon(
                                                  onPressed: () async {
                                                    safeSetState(() =>
                                                        FFAppState()
                                                                .isLightMode =
                                                            !FFAppState()
                                                                .isLightMode);
                                                    logFirebaseEvent(
                                                        'MY_A_I_ToggleIcon_pv0fy6jw_ON_TOGGLE');
                                                    if (Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark) {
                                                      logFirebaseEvent(
                                                          'ToggleIcon_set_dark_mode_settings');
                                                      setDarkModeSetting(
                                                          context,
                                                          ThemeMode.light);
                                                    } else {
                                                      logFirebaseEvent(
                                                          'ToggleIcon_set_dark_mode_settings');
                                                      setDarkModeSetting(
                                                          context,
                                                          ThemeMode.dark);
                                                    }
                                                  },
                                                  value:
                                                      FFAppState().isLightMode,
                                                  onIcon: Icon(
                                                    Icons.dark_mode_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                  offIcon: Icon(
                                                    Icons.light_mode_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.5,
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 8.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  icon: Icon(
                                                    Icons.login,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_login_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_navigate_to');

                                                    context.pushNamed(
                                                        Auth2LoginWidget
                                                            .routeName);
                                                  },
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.5,
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 8.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  icon: Icon(
                                                    Icons.menu_open,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 28.0,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_menu_open_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_drawer');
                                                    scaffoldKey.currentState!
                                                        .openDrawer();
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (valueOrDefault(
                                          currentUserDocument
                                              ?.charactersCreatedCount,
                                          0) <=
                                      0)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '30b5fs3w' /* Du hast noch keinen AI Charact... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 26.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'MY_A_I_JETZT_CHARACTER_ERSTELLEN_BTN_ON_');
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                    CreateWidget.routeName);
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'vrzxl590' /* Jetzt Character erstellen */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF1E2428),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 600.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '8fdy7ftv' /* Deine erstellten  */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 22.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'x37ur6nc' /* AI- */,
                                                          ),
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 22.0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'ti1cat85' /* Charactere */,
                                                          ),
                                                          style: TextStyle(
                                                            fontSize: 22.0,
                                                          ),
                                                        )
                                                      ],
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 25.0, 10.0, 0.0),
                                child:
                                    StreamBuilder<List<CharactersMainRecord>>(
                                  stream: queryCharactersMainRecord(
                                    queryBuilder: (charactersMainRecord) =>
                                        charactersMainRecord.where(
                                      'created_by',
                                      isEqualTo: currentUserReference,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitPumpingHeart(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<CharactersMainRecord>
                                        gridViewCharactersMainRecordList =
                                        snapshot.data!;

                                    return GridView.builder(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        5.0,
                                        0,
                                        5.0,
                                      ),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 10.0,
                                        childAspectRatio: 0.66,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          gridViewCharactersMainRecordList
                                              .length,
                                      itemBuilder: (context, gridViewIndex) {
                                        final gridViewCharactersMainRecord =
                                            gridViewCharactersMainRecordList[
                                                gridViewIndex];
                                        return Stack(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'MY_A_I_PAGE_Image_w65rmgal_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Image_navigate_to');

                                                  context.pushNamed(
                                                    CharacterProfilWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'characterId':
                                                          serializeParam(
                                                        gridViewCharactersMainRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Hero(
                                                  tag:
                                                      gridViewCharactersMainRecord
                                                          .referenceImage,
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      gridViewCharactersMainRecord
                                                          .referenceImage,
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          Alignment(0.0, -1.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 195.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x2A333333),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 35.0),
                                                child: Text(
                                                  gridViewCharactersMainRecord
                                                      .name,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 10.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: Text(
                                                      gridViewCharactersMainRecord
                                                          .age,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 20.0, 10.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 180.0,
                                                  buttonSize: 44.0,
                                                  fillColor: Color(0xBDDE5499),
                                                  icon: Icon(
                                                    Icons.wechat_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 28.0,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_PAGE_wechat_outlined_ICN_ON_TAP');
                                                    await authManager
                                                        .refreshUser();
                                                    if (currentUserEmailVerified ==
                                                        true) {
                                                      logFirebaseEvent(
                                                          'IconButton_navigate_to');

                                                      context.pushNamed(
                                                        ChatPageProWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'characterId':
                                                              serializeParam(
                                                            gridViewCharactersMainRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                          'userReference':
                                                              serializeParam(
                                                            currentUserReference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      logFirebaseEvent(
                                                          'IconButton_navigate_to');

                                                      context.pushNamed(
                                                          Auth2CreateWidget
                                                              .routeName);
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: FlutterFlowIconButton(
                                                  borderRadius: 8.0,
                                                  buttonSize: 40.0,
                                                  fillColor: Color(0x00DE5499),
                                                  icon: Icon(
                                                    Icons.delete_forever_sharp,
                                                    color: Color(0xA6F2F2F2),
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'MY_A_I_delete_forever_sharp_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_alert_dialog');
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Character löschen?'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'Abbruch'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Ja, löschen!'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    if (confirmDialogResponse) {
                                                      logFirebaseEvent(
                                                          'IconButton_backend_call');
                                                      await gridViewCharactersMainRecord
                                                          .reference
                                                          .delete();
                                                    } else {
                                                      logFirebaseEvent(
                                                          'IconButton_close_dialog_drawer_etc');
                                                      Navigator.pop(context);
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 280.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1E2428),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 600.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5onbgy7d' /* Deine erstellten  */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 34.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    TextSpan(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wreahjt0' /* AI- */,
                                                      ),
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 34.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lhq82og9' /* Charactere */,
                                                      ),
                                                      style: TextStyle(
                                                        fontSize: 34.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 42.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (valueOrDefault(
                                        currentUserDocument
                                            ?.charactersCreatedCount,
                                        0) <=
                                    0)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 50.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dxjc57wh' /* Du hast noch keinen AI Charact... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 26.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    100.0, 0.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'MY_A_I_JETZT_CHARACTER_ERSTELLEN_BTN_ON_');
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                    CreateWidget.routeName);
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'f0raubc0' /* Jetzt Character erstellen */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 40.0, 20.0, 0.0),
                                  child:
                                      StreamBuilder<List<CharactersMainRecord>>(
                                    stream: queryCharactersMainRecord(
                                      queryBuilder: (charactersMainRecord) =>
                                          charactersMainRecord.where(
                                        'created_by',
                                        isEqualTo: currentUserReference,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<CharactersMainRecord>
                                          gridViewCharactersMainRecordList =
                                          snapshot.data!;

                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 5,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 0.66,
                                        ),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            gridViewCharactersMainRecordList
                                                .length,
                                        itemBuilder: (context, gridViewIndex) {
                                          final gridViewCharactersMainRecord =
                                              gridViewCharactersMainRecordList[
                                                  gridViewIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Flexible(
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'MY_A_I_PAGE_Image_c3nvx1p9_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Image_navigate_to');

                                                          context.pushNamed(
                                                            CharacterProfilWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'characterId':
                                                                  serializeParam(
                                                                gridViewCharactersMainRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Hero(
                                                          tag: gridViewCharactersMainRecord
                                                              .referenceImage,
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              gridViewCharactersMainRecord
                                                                  .referenceImage,
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  1.0,
                                                              fit: BoxFit.cover,
                                                              alignment:
                                                                  Alignment(0.0,
                                                                      -1.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 80.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x65333333),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    45.0),
                                                        child: Text(
                                                          gridViewCharactersMainRecord
                                                              .name,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: Text(
                                                              gridViewCharactersMainRecord
                                                                  .age,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    10.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 180.0,
                                                          buttonSize: 48.0,
                                                          fillColor:
                                                              Color(0xCADE5499),
                                                          icon: Icon(
                                                            Icons
                                                                .wechat_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 32.0,
                                                          ),
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'MY_A_I_PAGE_wechat_outlined_ICN_ON_TAP');
                                                            await authManager
                                                                .refreshUser();
                                                            if (currentUserEmailVerified ==
                                                                true) {
                                                              logFirebaseEvent(
                                                                  'IconButton_navigate_to');

                                                              context.pushNamed(
                                                                ChatPageProWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'characterId':
                                                                      serializeParam(
                                                                    gridViewCharactersMainRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'userReference':
                                                                      serializeParam(
                                                                    currentUserReference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'IconButton_navigate_to');

                                                              context.pushNamed(
                                                                  Auth2CreateWidget
                                                                      .routeName);
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            Color(0x00DE5499),
                                                        icon: Icon(
                                                          Icons
                                                              .delete_forever_sharp,
                                                          color:
                                                              Color(0xA1F2F2F2),
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'MY_A_I_delete_forever_sharp_ICN_ON_TAP');
                                                          logFirebaseEvent(
                                                              'IconButton_alert_dialog');
                                                          var confirmDialogResponse =
                                                              await showDialog<
                                                                      bool>(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Character löschen?'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, false),
                                                                            child:
                                                                                Text('Abbruch'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, true),
                                                                            child:
                                                                                Text('Ja, löschen!'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  ) ??
                                                                  false;
                                                          if (confirmDialogResponse) {
                                                            logFirebaseEvent(
                                                                'IconButton_backend_call');
                                                            await gridViewCharactersMainRecord
                                                                .reference
                                                                .delete();
                                                          } else {
                                                            logFirebaseEvent(
                                                                'IconButton_close_dialog_drawer_etc');
                                                            Navigator.pop(
                                                                context);
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
