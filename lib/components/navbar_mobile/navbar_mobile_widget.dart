import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'navbar_mobile_model.dart';
export 'navbar_mobile_model.dart';

class NavbarMobileWidget extends StatefulWidget {
  /// Create adesktop navbar with logo left, 4 sitelinksfor the sites: Explore,
  /// Chats, Create AI and My Ai with matching Button Icons in the middle than
  /// on the right a icon for Notification, a toggle for EN/DE and Dark/Light
  /// Choice and than two CTA buttons
  const NavbarMobileWidget({super.key});

  @override
  State<NavbarMobileWidget> createState() => _NavbarMobileWidgetState();
}

class _NavbarMobileWidgetState extends State<NavbarMobileWidget> {
  late NavbarMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarMobileModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Home',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.bottomToTop,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: ToggleIcon(
                                onPressed: () async {
                                  safeSetState(() => FFAppState().isLightMode =
                                      !FFAppState().isLightMode);
                                  if (Theme.of(context).brightness ==
                                      Brightness.dark) {
                                    setDarkModeSetting(
                                        context, ThemeMode.light);
                                  } else {
                                    setDarkModeSetting(context, ThemeMode.dark);
                                  }
                                },
                                value: FFAppState().isLightMode,
                                onIcon: Icon(
                                  Icons.dark_mode_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                offIcon: Icon(
                                  Icons.light_mode_sharp,
                                  color: FlutterFlowTheme.of(context).accent2,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.person,
                                  color: FlutterFlowTheme.of(context).accent2,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'auth_2_profil',
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
                            Opacity(
                              opacity: 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.menu_open,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 28.0,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
