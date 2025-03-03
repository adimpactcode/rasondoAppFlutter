import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/components/button_pink/button_pink_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

/// Create adesktop navbar with logo left, 4 sitelinksfor the sites: Explore,
/// Chats, Create AI and My Ai with matching Button Icons in the middle than
/// on the right a icon for Notification, a toggle for EN/DE and Dark/Light
/// Choice and than two CTA buttons
class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
        tabletLandscape: false,
      ),
      child: Container(
        width: double.infinity,
        height: 90.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              ExploreWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(ExploreWidget.routeName);
                                },
                                child: Icon(
                                  Icons.explore,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 26.0,
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
                            context.pushNamed(ChatsWidget.routeName);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(ChatsWidget.routeName);
                                },
                                child: Icon(
                                  Icons.wechat_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 26.0,
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
                            context.pushNamed(CreateWidget.routeName);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(CreateWidget.routeName);
                                },
                                child: Icon(
                                  Icons.add_circle,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 26.0,
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                      ].divide(SizedBox(width: 35.0)),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.notifications,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: ToggleIcon(
                      onPressed: () async {
                        safeSetState(() => FFAppState().isLightMode =
                            !FFAppState().isLightMode);
                        if (Theme.of(context).brightness == Brightness.dark) {
                          setDarkModeSetting(context, ThemeMode.light);
                        } else {
                          setDarkModeSetting(context, ThemeMode.dark);
                        }
                      },
                      value: FFAppState().isLightMode,
                      onIcon: Icon(
                        Icons.dark_mode,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      offIcon: Icon(
                        Icons.light_mode,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                  if (loggedIn == true)
                    Opacity(
                      opacity: 0.5,
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
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
                      ),
                    ),
                  if (loggedIn == false)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(Auth2CreateWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.buttonPinkModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ButtonPinkWidget(),
                      ),
                    ),
                  if (loggedIn == false)
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(Auth2LoginWidget.routeName);
                      },
                      text: FFLocalizations.of(context).getText(
                        'wtj931sx' /* Login */,
                      ),
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).tertiary,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Icon(
                      Icons.menu_open,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 40.0,
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
