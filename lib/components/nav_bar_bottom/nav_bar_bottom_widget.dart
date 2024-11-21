import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_bottom_model.dart';
export 'nav_bar_bottom_model.dart';

class NavBarBottomWidget extends StatefulWidget {
  const NavBarBottomWidget({super.key});

  @override
  State<NavBarBottomWidget> createState() => _NavBarBottomWidgetState();
}

class _NavBarBottomWidgetState extends State<NavBarBottomWidget> {
  late NavBarBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarBottomModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 90.0,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * 1.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(3.0),
                    topRight: Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x1A57636C),
                        offset: Offset(
                          0.0,
                          -10.0,
                        ),
                        spreadRadius: 0.1,
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(3.0),
                      topRight: Radius.circular(3.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.menu_open,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 35.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 15.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.explore,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.add_circle_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 1.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.wechat_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.favorite_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
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
    );
  }
}
