import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await initFirebase();

  await FlutterFlowTheme.initialize();

  await FFLocalizations.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale = FFLocalizations.getStoredLocale();

  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<BaseAuthUser> userStream;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = rasondoFirebaseUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(milliseconds: isWeb ? 0 : 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    safeSetState(() => _locale = createLocale(language));
    FFLocalizations.storeLocale(language);
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rasondo',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackMaterialLocalizationDelegate(),
        FallbackCupertinoLocalizationDelegate(),
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('de'),
        Locale('en'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'Home';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home': HomeWidget(),
      'Explore': ExploreWidget(),
      'Create': CreateWidget(),
      'Chats': ChatsWidget(),
      'GetPremium': GetPremiumWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: Visibility(
        visible: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ),
        child: GNav(
          selectedIndex: currentIndex,
          onTabChange: (i) => safeSetState(() {
            _currentPage = null;
            _currentPageName = tabs.keys.toList()[i];
          }),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          color: Color(0xFFABAFB3),
          activeColor: FlutterFlowTheme.of(context).primary,
          tabBackgroundColor: Color(0x00000000),
          tabBorderRadius: 100.0,
          tabMargin: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 25.0),
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          gap: 0.0,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          duration: Duration(milliseconds: 500),
          haptic: true,
          tabs: [
            GButton(
              icon: Icons.home,
              text: FFLocalizations.of(context).getText(
                'd7y6v30d' /* HOME */,
              ),
              textStyle: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primary,
                fontWeight: FontWeight.w600,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.explore,
              text: FFLocalizations.of(context).getText(
                'uiknu893' /* Explore */,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.add_circle_sharp,
              text: FFLocalizations.of(context).getText(
                'z3mt6of3' /* CREATE */,
              ),
              textStyle: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primary,
                fontWeight: FontWeight.w600,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.wechat_sharp,
              text: FFLocalizations.of(context).getText(
                'ki0q4pzf' /* CHATS */,
              ),
              textStyle: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primary,
                fontWeight: FontWeight.w600,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.diamond,
              text: FFLocalizations.of(context).getText(
                '6jz1lyl1' /* PREMIUM */,
              ),
              iconSize: 24.0,
            )
          ],
        ),
      ),
    );
  }
}
