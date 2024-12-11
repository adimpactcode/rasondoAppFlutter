import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['de', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? deText = '',
    String? enText = '',
  }) =>
      [deText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    '18mzotln': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'jv21upoq': {
      'de': 'Chats',
      'en': 'chats',
    },
    '70js1yhv': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    'e7rmc3ty': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'wkueroee': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'zil46rvo': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'oibfhkrl': {
      'de': 'Login',
      'en': 'Login',
    },
    'almo1in3': {
      'de': 'Tauche ein in lebendige Welten',
      'en': 'Immerse yourself in living worlds',
    },
    '574o2tfq': {
      'de': 'KI TChat mit Realismus und Anime - Zauber',
      'en': 'AI Chat with Realism and Anime Magic',
    },
    'ci7qaamo': {
      'de':
          'Entdecke neue Horizonte der Zugehörigkeit. Öffne dich neuen Möglichkeiten. Sei Teil einer inspirierenden Gemeinschaft.',
      'en':
          'Discover new horizons of belonging. Open yourself up to new possibilities. Be part of an inspiring community.',
    },
    'y8eklo3a': {
      'de': 'Jetzt AI Character erstellen!',
      'en': 'Create AI Character Now!',
    },
    'j8lpky8o': {
      'de': 'Download App',
      'en': 'Download App',
    },
    'pr87y838': {
      'de': 'Tauche ein in lebendige Welten',
      'en': 'Immerse yourself in living worlds',
    },
    'tqa9g54n': {
      'de': 'KI Chat mit Realismus und \nAnime - Zauber',
      'en': 'AI chat with realism and \nanime magic',
    },
    'iev05gsg': {
      'de': 'Jetzt AI Partner erstellen',
      'en': 'Create AI Partner now',
    },
    'gu6gx401': {
      'de': '+10000 nutzende Kunden',
      'en': '+10000 customers using it',
    },
    '29y75mvm': {
      'de': 'Donwload App!',
      'en': 'Download app!',
    },
    'lzebf9wf': {
      'de': 'Realistisch und Anime Inspiriert',
      'en': 'Realistic and Anime Inspired',
    },
    '0339voim': {
      'de': 'Freundschaft und Verbundenheit',
      'en': 'friendship and solidarity',
    },
    'qd41zby8': {
      'de': 'Dein Wunschpartner - perfekt angepasst',
      'en': 'Your dream partner - perfectly adapted',
    },
    '04nvmo2y': {
      'de': 'Realsitisch und Anime inspiriert',
      'en': 'Realistic and anime inspired',
    },
    'swswd6pz': {
      'de': 'Freundschaft und Verbundenheit',
      'en': 'friendship and solidarity',
    },
    'hejslwxi': {
      'de': 'Dein Wunschpartner - perfekt angepasst',
      'en': 'Your dream partner - perfectly adapted',
    },
    '1p2h7oud': {
      'de': 'Wähle aus vielfältigen Optionen– Sie warten auf dich',
      'en': 'Choose from a variety of options – they are waiting for you',
    },
    'r63kn79u': {
      'de': 'Anime und Realistik',
      'en': 'Anime and Realism',
    },
    'tqzqh3p3': {
      'de': 'Jetzt Registrieren!',
      'en': 'Register now!',
    },
    'z750jyr5': {
      'de': 'REGISTRIERE DICH',
      'en': 'REGISTER',
    },
    'ruk8xcnk': {
      'de': 'Um mehr zu sehen',
      'en': 'To see more',
    },
    '7z5wty4c': {
      'de': 'Der Testzugang ist kostenlos. \nEs ist keine Zahlung notwendig.\n',
      'en': 'The trial access is free.\nNo payment is necessary.',
    },
    'nxc87eiz': {
      'de': 'Wähle aus vielfältigen Optionen\n– Sie warten auf dich',
      'en': 'Choose from a variety of options\n– They are waiting for you',
    },
    'kos3f3lc': {
      'de': 'Anime und Realsitik',
      'en': 'Anime and Realism',
    },
    'y26j31io': {
      'de': 'REGISTRIERE DICH!',
      'en': 'REGISTER!',
    },
    'l56xilme': {
      'de': 'Um mehr zu sehen.',
      'en': 'To see more.',
    },
    '7v8p0cra': {
      'de': 'Jetzt registrieren',
      'en': 'Register now',
    },
    'k5msjin5': {
      'de': 'jetzt kostenlos anmelden und loslegen!',
      'en': 'Register now for free and get started!',
    },
    'm6l8kibu': {
      'de': 'jetzt Charactere entdecken!',
      'en': 'discover characters now!',
    },
    '2w09a5k2': {
      'de': 'Kostenlos registrieren',
      'en': 'Register for free',
    },
    'cfiwk42r': {
      'de': 'Perfektes Match finden',
      'en': 'Find the perfect match',
    },
    'a6lpdqla': {
      'de': 'Tabulos Flirten',
      'en': 'Taboo-free flirting',
    },
    '8crmlr8i': {
      'de': 'Entdecke deine Affinität',
      'en': 'Discover your affinity',
    },
    'b7sqp7fp': {
      'de': 'Auf Premium upgraden!',
      'en': 'Upgrade to Premium!',
    },
    '2ij974a2': {
      'de': 'Jetzt Chatpartner entdecken!',
      'en': 'Discover chat partners now!',
    },
    '0s2wsgf5': {
      'de':
          '\"Ich hätte nie gedacht, dass eine AI-basierte Flirtplattform so gut funktionieren kann! \nDie Charaktere sind überraschend authentisch, und die Chats fühlen sich echt an. Besonders cool finde ich, dass man seinen eigenen Charakter erstellen und nach Belieben anpassen kann. Seitdem ich Premium-Mitglied bin, genieße ich die unbegrenzten Chats und die Möglichkeit, personalisierte Bilder zu generieren – das hebt die Interaktionen nochmal auf ein neues Level. Alles läuft flüssig, und die App ist total einfach zu bedienen. \nEine tolle Möglichkeit, mal etwas anderes zu erleben!\"',
      'en':
          '\"I never thought that an AI-based flirting platform could work so well! \nThe characters are surprisingly authentic and the chats feel real. I think it\'s particularly cool that you can create your own character and customize it as you like. Since becoming a premium member, I\'ve enjoyed the unlimited chats and the ability to generate personalized pictures - that takes the interactions to a new level. Everything runs smoothly and the app is really easy to use. \nA great way to experience something different!\"',
    },
    'el3latcq': {
      'de': 'Linus K.',
      'en': 'Linus K.',
    },
    'q8eo1g9d': {
      'de': 'jetzt kostenlos anmelden und loslegen!',
      'en': 'Register now for free and get started!',
    },
    '4nqrcton': {
      'de': 'Jetzt anmelden!',
      'en': 'Register now!',
    },
    'una0mk2h': {
      'de': 'Perfektes Match finden',
      'en': 'Find the perfect match',
    },
    'f7hba86n': {
      'de': 'Tabulos Flirten',
      'en': 'Taboo-free flirting',
    },
    'gbc01bf4': {
      'de': 'Entdecke deine Affinität',
      'en': 'Discover your affinity',
    },
    'wavubu90': {
      'de': 'Auf Premium upgraden!',
      'en': 'Upgrade to Premium!',
    },
    '453vaj7j': {
      'de': 'Deinen Chatpartner auswählen',
      'en': 'Select your chat partner',
    },
    '1zrsyhso': {
      'de':
          '\"Ich hätte nie gedacht, dass \neine AI-basierte Flirtplattform so gut funktionieren kann! \nDie Charaktere sind überraschend authentisch, und die Chats \nfühlen sich echt an. \nSchnell mal viele Frauen kennenlernen.\nEine tolle Möglichkeit, mal etwas \nanderes zu erleben!\"',
      'en':
          '\"I never thought that\nan AI-based flirting platform could work so well!\nThe characters are surprisingly authentic and the chats\nfeel real.\nGet to know lots of women quickly.\nA great opportunity to experience something\ndifferent!\"',
    },
    'pjeqxg0f': {
      'de': 'Linus K.',
      'en': 'Linus K.',
    },
    'lbj34iyg': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'i016fti7': {
      'de': 'Chats',
      'en': 'chats',
    },
    'zam6csiv': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'w25nc6tz': {
      'de': 'My AI',
      'en': 'My AI',
    },
    '29s9a3fv': {
      'de': 'Premium',
      'en': 'Premium',
    },
    '8yuy768c': {
      'de': 'Profil',
      'en': 'profile',
    },
    'dipyn947': {
      'de': 'Login',
      'en': 'Login',
    },
    '1off3qt5': {
      'de': 'Logout',
      'en': 'logout',
    },
    'd7y6v30d': {
      'de': 'HOME',
      'en': 'HOME',
    },
  },
  // Create
  {
    '7blind59': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    '9rb11ryf': {
      'de': 'Chats',
      'en': 'chats',
    },
    'kr3d66up': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    's652198e': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'xjrz02hu': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'g4xk8t0b': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'q284849g': {
      'de': 'Login',
      'en': 'Login',
    },
    'scidgjg9': {
      'de': 'Erstelle deinen Traumpartner mit nur wenigen Klicks!',
      'en': 'Create your dream partner with just a few clicks!',
    },
    'nkn7i265': {
      'de': 'Realistik',
      'en': 'realism',
    },
    '59j0bbrj': {
      'de': 'Anime',
      'en': 'Anime',
    },
    'pla4gnzb': {
      'de': 'Style auswählen:',
      'en': 'Select style:',
    },
    'wjw327g5': {
      'de': 'Wähle das Geschlecht',
      'en': 'Choose the gender',
    },
    '5m84ax7l': {
      'de': 'Style auswählen:',
      'en': 'Select style:',
    },
    'z14f63qy': {
      'de': 'Realistic',
      'en': 'Realistic',
    },
    'eewqty4k': {
      'de': 'Wähle das Geschlecht',
      'en': 'Choose the gender',
    },
    '2j0b1xia': {
      'de': 'Frau',
      'en': 'Woman',
    },
    'ob1q7edz': {
      'de': 'Mann',
      'en': 'Man',
    },
    'njn7p23z': {
      'de': '',
      'en': 'Product Design',
    },
    '6hrpxbh4': {
      'de': 'Los geht`s',
      'en': 'Let\'s go',
    },
    '7p40br8d': {
      'de': 'Bestimme das Alter',
      'en': 'Determine the age',
    },
    'dzxrl525': {
      'de': 'Teen 18+',
      'en': 'Teen 18+',
    },
    'g4vuen18': {
      'de': '20s',
      'en': '20s',
    },
    '2bx80xjg': {
      'de': '30s',
      'en': '30s',
    },
    'mad1e1t9': {
      'de': '40s',
      'en': '40s',
    },
    'dxa5jocu': {
      'de': '50+',
      'en': '50+',
    },
    'etppi625': {
      'de': '',
      'en': 'Product Design',
    },
    'g78t8q70': {
      'de': 'Welche Herkunft soll dein AI-Charakter haben?',
      'en': 'What origin should your AI character have?',
    },
    'bxlj62av': {
      'de': 'Kaukasisch',
      'en': 'Caucasian',
    },
    'jdqrwe4a': {
      'de': 'Latina',
      'en': 'Latina',
    },
    '6ccca24z': {
      'de': 'Afrikanisch',
      'en': 'African',
    },
    'tjwok5vu': {
      'de': 'Asiatisch',
      'en': 'Asian',
    },
    'twq49kvm': {
      'de': 'Europäisch',
      'en': 'European',
    },
    'd0d4n6qf': {
      'de': 'Arabisch',
      'en': 'Arabic',
    },
    'mi5pa39f': {
      'de': 'Kaukasisch',
      'en': 'Caucasian',
    },
    '6w7dj1qc': {
      'de': 'Latina',
      'en': 'Latina',
    },
    'l95v4ul7': {
      'de': 'Afrikanisch',
      'en': 'African',
    },
    '9hfkb8xm': {
      'de': 'Asiatisch',
      'en': 'Asian',
    },
    '3s0pxkku': {
      'de': 'Europäisch',
      'en': 'European',
    },
    'elc5fgm9': {
      'de': 'Arabisch',
      'en': 'Arabic',
    },
    'ggzoamue': {
      'de': 'Welches Accessoire soll dein Anime haben?',
      'en': 'Which accessory should your anime have?',
    },
    'g9oja936': {
      'de': 'Tattoo',
      'en': 'tattoo',
    },
    '5u7pwq6q': {
      'de': 'Brille',
      'en': 'Glasses',
    },
    'w7nxq6g3': {
      'de': 'Hörner',
      'en': 'horns',
    },
    'i452unhc': {
      'de': 'Schwanz',
      'en': 'tail',
    },
    'vwzxfcgf': {
      'de': 'Ohrringe',
      'en': 'earrings',
    },
    'svfvlosw': {
      'de': 'Halskette',
      'en': 'Necklace',
    },
    'h5oujm16': {
      'de': 'zurück',
      'en': 'back',
    },
    'jnljif28': {
      'de': 'weiter',
      'en': 'further',
    },
    '7nllrx5k': {
      'de': 'zurück',
      'en': 'back',
    },
    'jpmnop22': {
      'de': 'weiter',
      'en': 'further',
    },
    'zwdu9ik9': {
      'de': 'Haarfarbe',
      'en': 'hair color',
    },
    'wkqk5501': {
      'de': 'Blond',
      'en': 'Blond',
    },
    'lrj4uufs': {
      'de': 'Brunette',
      'en': 'Brunette',
    },
    '8hyz3bqa': {
      'de': 'Schwarz',
      'en': 'Black',
    },
    'j1bafl3j': {
      'de': 'Rot',
      'en': 'Red',
    },
    'qv3080k0': {
      'de': 'Blau',
      'en': 'Blue',
    },
    '2sju6esb': {
      'de': 'Rosa',
      'en': 'Pink',
    },
    'v9swo5rt': {
      'de': 'Weiß',
      'en': 'White',
    },
    'pqs6rabf': {
      'de': 'Blond',
      'en': 'Blond',
    },
    '9r2czo3z': {
      'de': 'Brunette',
      'en': 'Brunette',
    },
    'l6b53fox': {
      'de': 'Schwarz',
      'en': 'Black',
    },
    'lu3btcel': {
      'de': 'Rot',
      'en': 'Red',
    },
    'ix9nszxp': {
      'de': 'Weiß',
      'en': 'White',
    },
    'v4osorml': {
      'de': 'Blau',
      'en': 'Blue',
    },
    '38u9tb3p': {
      'de': 'Bunt',
      'en': 'Colorful',
    },
    '0o4jpp31': {
      'de': 'Pink',
      'en': 'Pink',
    },
    'ch6o61h5': {
      'de': 'Grün',
      'en': 'Green',
    },
    'weghmkiy': {
      'de': 'Rot',
      'en': 'Red',
    },
    'xgc196c7': {
      'de': 'Weiß',
      'en': 'White',
    },
    'zf792d2h': {
      'de': 'Dunkel',
      'en': 'Dark',
    },
    'fmlsfgip': {
      'de': 'Silber',
      'en': 'Silver',
    },
    'vlab3x18': {
      'de': 'Blond',
      'en': 'Blond',
    },
    '2apfe2mm': {
      'de': 'Frisur',
      'en': 'hairstyle',
    },
    '33qd6s5i': {
      'de': 'Lang',
      'en': 'Long',
    },
    '2ueqwwg2': {
      'de': 'Kurz',
      'en': 'Short',
    },
    '8o1lug8d': {
      'de': 'Glatt',
      'en': 'Smooth',
    },
    'n6mnzjei': {
      'de': 'Wellig',
      'en': 'Wavy',
    },
    'cq6eyrxk': {
      'de': 'Zopf',
      'en': 'plait',
    },
    '7aidwb6w': {
      'de': 'Pony',
      'en': 'pony',
    },
    'bca92ssp': {
      'de': 'Lockig',
      'en': 'Curly',
    },
    '6wtqdp08': {
      'de': 'Fransig',
      'en': 'Fransig',
    },
    '015vg7no': {
      'de': 'Abendfrisur',
      'en': 'evening hairstyle',
    },
    'eu9f8e7a': {
      'de': '',
      'en': 'Product Design',
    },
    'nhxn568a': {
      'de': 'Kurz',
      'en': 'Short',
    },
    'c26vlnm3': {
      'de': 'Glatt',
      'en': 'Smooth',
    },
    'uy8ht8ah': {
      'de': 'Wellig',
      'en': 'Wavy',
    },
    'ud4ll3tr': {
      'de': 'Odango',
      'en': 'Odango',
    },
    'grt0o1ec': {
      'de': 'Spitzen enden',
      'en': 'tips end',
    },
    'rtuaufs4': {
      'de': 'Ahogo',
      'en': 'Ahogo',
    },
    'ykbegjoj': {
      'de': 'Ojou-Locken',
      'en': 'Ojou curls',
    },
    'x8at0wmx': {
      'de': 'Hime haar',
      'en': 'Hime haar',
    },
    'vn59oqdn': {
      'de': '',
      'en': 'Product Design',
    },
    'zi5jqleh': {
      'de': 'Augenfarbe',
      'en': 'eye color',
    },
    '6x52o7h5': {
      'de': 'Blau',
      'en': 'Blue',
    },
    'ogq10z9l': {
      'de': 'Braun',
      'en': 'Brown',
    },
    '39mt2fd7': {
      'de': 'Grün',
      'en': 'Green',
    },
    'qx9tts2m': {
      'de': 'Gold',
      'en': 'Gold',
    },
    '5yyv3j9d': {
      'de': 'Silber',
      'en': 'Silver',
    },
    'j75d85g4': {
      'de': 'Dunkel',
      'en': 'Dark',
    },
    'zsyqcx21': {
      'de': 'Mehrfarbig',
      'en': 'Multicolored',
    },
    'nlt6f2ek': {
      'de': 'zurück',
      'en': 'back',
    },
    'gaimijnt': {
      'de': 'weiter',
      'en': 'further',
    },
    'gjy6mnqz': {
      'de': 'zurück',
      'en': 'back',
    },
    'vp8kqq4s': {
      'de': 'weiter',
      'en': 'further',
    },
    'fio60p8t': {
      'de': 'Bodytyp',
      'en': 'body type',
    },
    'vbw56u12': {
      'de': 'Skinny',
      'en': 'Skinny',
    },
    'ybtpab5u': {
      'de': 'Normal',
      'en': 'Normal',
    },
    'l8fwvj0c': {
      'de': 'Athletisch',
      'en': 'Athletic',
    },
    'ioq5a6i9': {
      'de': 'Kurvig',
      'en': 'Curvy',
    },
    'm0dobcxt': {
      'de': 'XXL',
      'en': 'XXL',
    },
    'czxfx11y': {
      'de': 'Slim',
      'en': 'Slim',
    },
    'mugwz362': {
      'de': 'Normal',
      'en': 'Normal',
    },
    'siqzv4n5': {
      'de': 'Athletisch',
      'en': 'Athletic',
    },
    'loebqoij': {
      'de': 'XXL',
      'en': 'XXL',
    },
    '9bpt29c5': {
      'de': 'Brüste',
      'en': 'breasts',
    },
    'pl1voibw': {
      'de': 'Klein',
      'en': 'Small',
    },
    'gn48tc0m': {
      'de': 'Medium',
      'en': 'medium',
    },
    'w1rnrgh8': {
      'de': 'Groß',
      'en': 'Large',
    },
    'nlmb5zoy': {
      'de': 'XXL',
      'en': 'XXL',
    },
    'synq0cpa': {
      'de': 'Hintern',
      'en': 'butt',
    },
    'm9heafr1': {
      'de': 'Klein',
      'en': 'Small',
    },
    'iklx8rkb': {
      'de': 'Medium',
      'en': 'medium',
    },
    'efj28szk': {
      'de': 'Groß',
      'en': 'Large',
    },
    'uporc8m9': {
      'de': 'XXL',
      'en': 'XXL',
    },
    '159dll0s': {
      'de': 'Klein',
      'en': 'Small',
    },
    'ubrb8f2x': {
      'de': 'Medium',
      'en': 'medium',
    },
    'c01foxhx': {
      'de': 'Groß',
      'en': 'Large',
    },
    'qolaica2': {
      'de': 'XXL',
      'en': 'XXL',
    },
    '0wv5aev3': {
      'de': 'Tattoo',
      'en': 'tattoo',
    },
    's5dfowh8': {
      'de': 'kein tattoo',
      'en': 'no tattoo',
    },
    'l5zm42r4': {
      'de': 'mit tattoo',
      'en': 'with tattoo',
    },
    'hw5qp45f': {
      'de': '',
      'en': 'without',
    },
    'ya6l81fp': {
      'de': 'zurück',
      'en': 'back',
    },
    'pmix35qh': {
      'de': 'weiter',
      'en': 'further',
    },
    '3d8vut0g': {
      'de': 'zurück',
      'en': 'back',
    },
    '3phnwasu': {
      'de': 'weiter',
      'en': 'further',
    },
    '8ydmk0c4': {
      'de': 'Kleidung',
      'en': 'Clothing',
    },
    '6dkc26yc': {
      'de': 'Casual',
      'en': 'Casual',
    },
    'bcpgcik2': {
      'de': 'Business',
      'en': 'Business',
    },
    'f3fhlg5e': {
      'de': 'Sportlich',
      'en': 'Sporty',
    },
    'zto54szn': {
      'de': 'Elegant',
      'en': 'Elegant',
    },
    '436kavn3': {
      'de': 'Street Style',
      'en': 'street style',
    },
    'vej58ghy': {
      'de': 'Bademode',
      'en': 'swimwear',
    },
    'uj10nc95': {
      'de': 'Dessous',
      'en': 'lingerie',
    },
    '5khc15m1': {
      'de': '',
      'en': 'Product Design',
    },
    'p5bdln68': {
      'de': 'Schuluniform',
      'en': 'school uniform',
    },
    'tgzsjoja': {
      'de': 'Futuristisch',
      'en': 'Futuristic',
    },
    'owigu4oo': {
      'de': 'Historisch',
      'en': 'Historical',
    },
    'y0mz7hir': {
      'de': '',
      'en': 'Product Design',
    },
    'zy6u3pb4': {
      'de': 'Ambiente',
      'en': 'ambience',
    },
    'uauooswu': {
      'de': 'Futuristic',
      'en': 'Futuristic',
    },
    '1utstd7o': {
      'de': 'Ambiente',
      'en': 'ambience',
    },
    'lf4va1pq': {
      'de': 'Asiatisch',
      'en': 'Asian',
    },
    '1egx2pg5': {
      'de': 'Fantasy',
      'en': 'Fantasy',
    },
    'mwwxjo2s': {
      'de': 'City',
      'en': 'City',
    },
    'axvsr9ox': {
      'de': 'Ambiente',
      'en': 'ambience',
    },
    'j4mw6o2e': {
      'de': 'Wohnung',
      'en': 'Apartment',
    },
    'c6785o9c': {
      'de': 'Natur',
      'en': 'Nature',
    },
    '83oiz40p': {
      'de': 'Restaurant',
      'en': 'restaurant',
    },
    'iqj4xy1n': {
      'de': 'Büro',
      'en': 'Office',
    },
    'gvy18d95': {
      'de': 'Strand',
      'en': 'Beach',
    },
    'jdgtxrbx': {
      'de': 'Gym',
      'en': 'Gym',
    },
    's6zou8ao': {
      'de': 'Luxus',
      'en': 'luxury',
    },
    'sfqi32la': {
      'de': 'Club',
      'en': 'club',
    },
    'rjir5wmt': {
      'de': 'zurück',
      'en': 'back',
    },
    'jli2qfpg': {
      'de': 'weiter',
      'en': 'further',
    },
    'ze4x5cly': {
      'de': 'zutück',
      'en': 'zutück',
    },
    'fspfwkml': {
      'de': 'weiter',
      'en': 'further',
    },
    'q1ibzbhb': {
      'de': '2. Gib deiner AI eine Persönlichkeit',
      'en': '2. Give your AI a personality',
    },
    'trxgsgh1': {
      'de':
          'Je genauer du die Persönlichkeit deines KI-Charakters beschreibst, desto \nintensiver und erlebnisreicher wird deine Kommunikation mit ihm. Einige\nAspekte, die du berücksichtigen solltest, sind:\n\nGrundcharakter: \nIst dein Charakter eher introvertiert oder extrovertiert? \nIst er selbstbewusst oder eher schüchtern? Welche Werte und \nÜberzeugungen leiten sein Handeln?\n\nInteressen und Hobbys: \nWomit beschäftigt sich dein Charakter gerne in \nseiner Freizeit? Welche Themen interessieren ihn besonders?\n\nSprachstil und Ausdrucksweise:\n Wie drückt sich dein Charakter aus? \nVerwendet er eher formelle oder informelle Sprache? Welche \nRedewendungen oder Sprachmanierismen hat er?\n\nEmotionalität: \nWie geht dein Charakter mit Gefühlen um? Ist er eher sachlich und distanziert oder sehr emotional und empathisch?\n\nJe detaillierter und authentischer du deinen KI-Charakter gestaltest, \ndesto glaubwürdiger und immersiver wird die Interaktion für dich. Dies führt zu einem intensiveren und erlebnisreicheren \nKommunikationserlebnis-',
      'en':
          'The more precisely you describe the personality of your AI character, the more intense and eventful your communication with him will be. Some aspects you should consider are: Basic character: Is your character more introverted or extroverted? Is he self-confident or rather shy? What values and beliefs guide his actions? Interests and hobbies: What does your character like to do in his free time? What topics are he particularly interested in? Language style and expression: How does your character express himself? Does he use more formal or informal language? What phrases or language mannerisms does he have? Emotionality: How does your character deal with feelings? Is he more matter-of-fact and distant or very emotional and empathetic? The more detailed and authentic you make your AI character, the more credible and immersive the interaction will be for you. This leads to a more intense and eventful \ncommunication experience-',
    },
    'ms9r7s2n': {
      'de': 'Gib deiner AI einen Namen',
      'en': 'Give your AI a name',
    },
    'br8gcluf': {
      'de': 'Name...',
      'en': 'Name...',
    },
    'neds0jl0': {
      'de': 'Persönlichkeitsbeschreibung (optional)',
      'en': 'personality description (optional)',
    },
    '8eh3uqz6': {
      'de': '',
      'en': 'Personality...',
    },
    'dv8n03bs': {
      'de':
          'z. B. Du bist eine charmante und selbstbewusste Frau mit einem scharfen Verstand und einem Sinn für Humor....',
      'en':
          'e.g. You are a charming and confident woman with a sharp mind and a sense of humor....',
    },
    'xczraz8p': {
      'de': 'Character',
      'en': 'character',
    },
    '4sghkwvi': {
      'de': 'Freundlich',
      'en': 'Friendly',
    },
    'byv4cz0j': {
      'de': 'Humorvoll',
      'en': 'Humorous',
    },
    'j96nddru': {
      'de': 'Direkt',
      'en': 'Direct',
    },
    '4qsjp30i': {
      'de': 'Mysteriös',
      'en': 'Mysterious',
    },
    '80jcivb8': {
      'de': 'Romatisch',
      'en': 'Romantic',
    },
    '1bblhaqr': {
      'de': 'Zurückhaltend',
      'en': 'Reserved',
    },
    'h4d9l6c6': {
      'de': 'Arrogant',
      'en': 'Arrogant',
    },
    '81ilmazz': {
      'de': 'Selbstbewusst',
      'en': 'Confident',
    },
    'o2do0l8c': {
      'de': 'Zuverlässig',
      'en': 'Reliable',
    },
    'l5n0hcyr': {
      'de': 'Respektvoll',
      'en': 'Respectfully',
    },
    'nnxh2tb2': {
      'de': '',
      'en': 'Product Design',
    },
    'l86cuf5b': {
      'de': 'Dere-Dere',
      'en': 'Dere-Dere',
    },
    'ub3lb75i': {
      'de': 'Tsundere',
      'en': 'Tsundere',
    },
    'gzn6kgzo': {
      'de': 'Dandere',
      'en': 'Dandere',
    },
    'q1mw4fya': {
      'de': 'Kuudere',
      'en': 'Kuudere',
    },
    'uinfez7z': {
      'de': 'Yandere',
      'en': 'Yandere',
    },
    '5dcw3xj1': {
      'de': 'Genky Girl',
      'en': 'Genky Girl',
    },
    'w8i3xdli': {
      'de': '',
      'en': 'Product Design',
    },
    'yda80b87': {
      'de': 'Persönlichkeit',
      'en': 'personality',
    },
    'vihisi1s': {
      'de': 'Optimistisch',
      'en': 'Optimistic',
    },
    '2q8ewcyx': {
      'de': 'Nachdenklich',
      'en': 'Pensive',
    },
    'uogwluwp': {
      'de': 'Sarkastisch',
      'en': 'Sarcastic',
    },
    '6zxwegw3': {
      'de': 'Kreativ',
      'en': 'Creative',
    },
    'v2d4f348': {
      'de': 'Intelligent',
      'en': 'Intelligent',
    },
    'fm5z657o': {
      'de': 'Ehrgeizig',
      'en': 'Ambitious',
    },
    'dwpd0i8h': {
      'de': 'Tolerant',
      'en': 'Tolerant',
    },
    '4lfwmwrs': {
      'de': 'Eifersüchtig',
      'en': 'Jealous',
    },
    'r1qubjz0': {
      'de': 'Hilfsbereit',
      'en': 'Helpful',
    },
    '7qkrw1bq': {
      'de': 'Neugierig',
      'en': 'Curious',
    },
    'doa3pzsz': {
      'de': 'Ungezwungen',
      'en': 'Unconstrained',
    },
    '4gqlhhaa': {
      'de': '',
      'en': 'Product Design',
    },
    'f73l99ch': {
      'de': 'Mutig',
      'en': 'Brave',
    },
    'ci1k5e3t': {
      'de': 'Entschlossen',
      'en': 'Determined',
    },
    'uy634nzh': {
      'de': 'Fürsorglich',
      'en': 'caring',
    },
    'htg8spsq': {
      'de': 'Mütterlich',
      'en': 'Maternal',
    },
    'ut8d5xdi': {
      'de': 'Exsentrisch',
      'en': 'eccentric',
    },
    'e3vo8ez3': {
      'de': 'Schüchtern',
      'en': 'Shy',
    },
    'kkelewyt': {
      'de': 'Übermütig',
      'en': 'Overconfident',
    },
    'mo80rpix': {
      'de': 'Eifersüchtig',
      'en': 'Jealous',
    },
    'ui8k55vf': {
      'de': 'Energiegeladen',
      'en': 'Energetic',
    },
    'pck80djw': {
      'de': 'Sanft',
      'en': 'Soft',
    },
    'gaha6y8e': {
      'de': 'Finster',
      'en': 'Dark',
    },
    'ii4jow3y': {
      'de': 'Arrogant',
      'en': 'Arrogant',
    },
    'wvpx3e6i': {
      'de': 'Introvertiert',
      'en': 'Introverted',
    },
    '7a81dgxm': {
      'de': 'Heldenhaft',
      'en': 'Heroic',
    },
    'vbz9yp7o': {
      'de': 'Herrschsüchtig',
      'en': 'Domineering',
    },
    'z7b2rsav': {
      'de': '',
      'en': 'Product Design',
    },
    'rxzasmau': {
      'de': 'Stimme/Ausdruck',
      'en': 'voice/expression',
    },
    'hxf6cs9b': {
      'de': 'Sanft',
      'en': 'Soft',
    },
    '11rtvm1y': {
      'de': 'Selbstbewusst',
      'en': 'Confident',
    },
    'we2gubi7': {
      'de': 'Tief',
      'en': 'Deep',
    },
    '43wer224': {
      'de': 'Charmant',
      'en': 'Charming',
    },
    't2qzeu0v': {
      'de': 'Formell',
      'en': 'Formally',
    },
    '1dp6vty3': {
      'de': 'Warm',
      'en': 'Warm',
    },
    'a299mvbw': {
      'de': 'Rauchig',
      'en': 'Smoky',
    },
    'yirct660': {
      'de': '',
      'en': 'Product Design',
    },
    'ulju7pky': {
      'de': 'Hoch und kindlich',
      'en': 'High and childlike',
    },
    '03mqouiv': {
      'de': 'Tief und maskulin',
      'en': 'Deep and masculine',
    },
    '7ijz1zhi': {
      'de': 'Exzentrische Betonungen',
      'en': 'Eccentric accents',
    },
    'w1vgbufj': {
      'de': 'Emotionale Ausdruckskraft',
      'en': 'Emotional expressiveness',
    },
    'wfxwsmhy': {
      'de': 'Japanischer Akzent',
      'en': 'Japanese accent',
    },
    'di1tdnoh': {
      'de': '',
      'en': 'Product Design',
    },
    'umwjz6y3': {
      'de': 'Beruf',
      'en': 'Profession',
    },
    '3sgph7qn': {
      'de': 'Beruf...',
      'en': 'Profession...',
    },
    'mebuxd79': {
      'de': 'Intimes Verhalten',
      'en': 'Intimate behavior',
    },
    'g7y5iqsv': {
      'de': 'Zurückhaltend',
      'en': 'Reserved',
    },
    'ntocih5z': {
      'de': 'Offen',
      'en': 'Open',
    },
    'pvk5o7he': {
      'de': 'Unschuldig',
      'en': 'Innocent',
    },
    'gggpijgq': {
      'de': 'Verspielt',
      'en': 'Playful',
    },
    'ao13f6m2': {
      'de': 'Sinnlich',
      'en': 'Sensual',
    },
    'vrboky1m': {
      'de': 'Dominant',
      'en': 'Dominant',
    },
    'nppdwizw': {
      'de': 'Romantic',
      'en': 'Romantic',
    },
    'c0xxzuwv': {
      'de': 'Schüchtern',
      'en': 'Shy',
    },
    'jicvanjz': {
      'de': '',
      'en': 'Product Design',
    },
    'wu39fwgo': {
      'de': 'Szenarien',
      'en': 'scenarios',
    },
    'u2js5ftw': {
      'de': 'Themen',
      'en': 'topics',
    },
    'bjanrzd5': {
      'de': 'Romantisch',
      'en': 'Romantic',
    },
    'ybzv8p60': {
      'de': 'Abenteuer',
      'en': 'adventure',
    },
    'er6erj69': {
      'de': 'Tanzen im Club',
      'en': 'Dancing in the Club',
    },
    'ca0pfoqo': {
      'de': 'Geschäftsmeeting',
      'en': 'business meeting',
    },
    'ezfinwk5': {
      'de': 'Geheimes Treffen',
      'en': 'Secret Meeting',
    },
    'glgtpy2d': {
      'de': 'Shoppen',
      'en': 'shopping',
    },
    '8k97hgtz': {
      'de': 'Im Saunaclub',
      'en': 'In the sauna club',
    },
    'ugsyfitl': {
      'de': 'Im Urlaub',
      'en': 'On holiday',
    },
    '52ln0mbf': {
      'de': '',
      'en': 'In the cafe',
    },
    '3uv3xtzd': {
      'de': 'Kampftechniken',
      'en': 'fighting techniques',
    },
    '1sglyiuv': {
      'de': 'Magische Kräfte',
      'en': 'Magical powers',
    },
    'yk8dp5q3': {
      'de': 'Physiche Stärke',
      'en': 'Physical Strength',
    },
    'c1fi9kvs': {
      'de': 'Besondere Sinne',
      'en': 'Special Senses',
    },
    'vd2me67u': {
      'de': 'Transformationsfähig',
      'en': 'capable of transformation',
    },
    '1jbz5u3c': {
      'de': '',
      'en': 'In the cafe',
    },
    'nrl9wvfn': {
      'de': 'zurück',
      'en': 'back',
    },
    'wh6hum00': {
      'de': 'zur Übersicht',
      'en': 'to overview',
    },
    'q6mrv4kj': {
      'de': 'zurück',
      'en': 'back',
    },
    '9k6ey4vz': {
      'de': 'zur Übersicht',
      'en': 'to overview',
    },
    't6s74anf': {
      'de': 'Zusammenfassung',
      'en': 'Summary',
    },
    'v20i18y1': {
      'de': 'Aussehen',
      'en': 'Look',
    },
    'ag0gpbha': {
      'de': 'AI Style:',
      'en': 'AI Style:',
    },
    '84tqgv09': {
      'de': 'Geschlecht:',
      'en': 'Gender:',
    },
    '3nahdkpp': {
      'de': 'Alter:',
      'en': 'Age:',
    },
    'b6tt61k6': {
      'de': 'Herkunft:',
      'en': 'Origin:',
    },
    'k4t4hgya': {
      'de': 'Haarfarbe:',
      'en': 'Hair color:',
    },
    'zxn4oa57': {
      'de': 'Frisur:',
      'en': 'Hairstyle:',
    },
    '04e4n0sx': {
      'de': 'Augenfarbe:',
      'en': 'Eye color:',
    },
    'uq0sjpzd': {
      'de': 'Körper:',
      'en': 'Body:',
    },
    '1b0473qo': {
      'de': 'Brüste:',
      'en': 'Breasts:',
    },
    '1tevcqcf': {
      'de': 'Hintern:',
      'en': 'Butt:',
    },
    'm14eiz6w': {
      'de': 'Accessoire:',
      'en': 'Accessory:',
    },
    '3x22splf': {
      'de': 'Kleidung:',
      'en': 'Clothing:',
    },
    'owoq3uy9': {
      'de': 'Ambiente:',
      'en': 'Ambience:',
    },
    'pwxxxtda': {
      'de': 'Persönlichkeit',
      'en': 'personality',
    },
    '6fcpicjq': {
      'de': 'Name:',
      'en': 'Name:',
    },
    'msfdv0yk': {
      'de': 'Beschreibung:',
      'en': 'Description:',
    },
    'h32v9ep6': {
      'de': 'Character:',
      'en': 'Character:',
    },
    'j77st3b9': {
      'de': 'Persönlichkeit:',
      'en': 'Personality:',
    },
    'athyro8i': {
      'de': 'Stimme/Ausdruck:',
      'en': 'Voice/Expression:',
    },
    'x2sord3g': {
      'de': 'Beruf:',
      'en': 'Profession:',
    },
    'ytdu5fui': {
      'de': 'Intimes verhalten:',
      'en': 'Intimate behavior:',
    },
    '2avxd5t0': {
      'de': 'Szenarien:',
      'en': 'Scenarios:',
    },
    'l9or913j': {
      'de': 'Zusammenfassung',
      'en': 'Summary',
    },
    'ssyb0c34': {
      'de': 'Aussehen',
      'en': 'Look',
    },
    'pr2j1ge4': {
      'de': 'AI Style:',
      'en': 'AI Style:',
    },
    '7q350qng': {
      'de': 'Geschlecht:',
      'en': 'Gender:',
    },
    'r6zq3p66': {
      'de': 'Alter:',
      'en': 'Age:',
    },
    'jnb4fdxa': {
      'de': 'Haarfarbe:',
      'en': 'Hair color:',
    },
    '62a9yv9v': {
      'de': 'Frisur:',
      'en': 'Hairstyle:',
    },
    'ns58ubcp': {
      'de': 'Augenfarbe:',
      'en': 'Eye color:',
    },
    '92aip3v7': {
      'de': 'Körper:',
      'en': 'Body:',
    },
    'huiz120v': {
      'de': 'Brüste:',
      'en': 'Breasts:',
    },
    'pn9ipl99': {
      'de': 'Hintern:',
      'en': 'Butt:',
    },
    'iws5lisv': {
      'de': 'Accessoire:',
      'en': 'Accessory:',
    },
    'ocapqjjz': {
      'de': 'Kleidung:',
      'en': 'Clothing:',
    },
    'e6ib103z': {
      'de': 'Ambiente:',
      'en': 'Ambience:',
    },
    'asp69wbs': {
      'de': 'Persönlichkeit',
      'en': 'personality',
    },
    '7k81dm9i': {
      'de': 'Name:',
      'en': 'Name:',
    },
    'xgaw4tcn': {
      'de': 'Beschreibung:',
      'en': 'Description:',
    },
    'lowhry72': {
      'de': 'Character:',
      'en': 'Character:',
    },
    'ra6y48zp': {
      'de': 'Persönlichkeit:',
      'en': 'Personality:',
    },
    '3fz5fozw': {
      'de': 'Stimme/Ausdruck:',
      'en': 'Voice/Expression:',
    },
    'fp1arl54': {
      'de': 'Beruf:',
      'en': 'Profession:',
    },
    'p5mprp7b': {
      'de': 'Intimes verhalten:',
      'en': 'Intimate behavior:',
    },
    '8ydlloxr': {
      'de': 'Szenarien:',
      'en': 'Scenarios:',
    },
    '0hwbspd1': {
      'de': 'Status',
      'en': 'status',
    },
    'hn7qc8fv': {
      'de': 'Character öffentlich zugänglich?',
      'en': 'Character publicly accessible?',
    },
    '92hv90we': {
      'de': 'Öffentlich',
      'en': 'Public',
    },
    'vbtqg2nu': {
      'de': 'Privat',
      'en': 'Private',
    },
    'l9bpqcg2': {
      'de':
          'Tolle nachrichten! \nJetzt Character öffentlich stellen und likes erhalten.\n\nEs gibt jedoch ein paar wichtige Dinge zu beachten:\n\nAnonymität: Wenn du deinen Charakter veröffentlichst, bleibt deine \nIdentität anonym. Niemand erfährt, wer diesen Charakter erschaffen hat.\nInhalte: Bitte stelle sicher, dass dein Charakter keine freizügigen oder \nsexuell anzüglichen Inhalte aufweist. Solche Charaktere werden nicht \nveröffentlicht.\n\nCommunity-Richtlinien: Achte darauf, dass dein Charakter und deine \nInhalte unseren Gemeinschaftsrichtlinien entsprechen. Wir behalten uns \ndas Recht vor, Beiträge zu entfernen, die gegen diese Richtlinien \nverstoßen.\n\nWenn du diese Bedingungen erfüllst, kann dein KI-Charakter jetzt veröffentlicht \nund von anderen Nutzern entdeckt werden. Lass die Kreativität sprudeln und \nvile likes sammeln.',
      'en':
          'Great news! \nMake your character public now and get likes.\n\nThere are a few important things to note, however:\n\nAnonymity: When you publish your character, your \nidentity remains anonymous. No one will know who created this character.\n\nContent: Please make sure that your character does not contain any explicit or \nsexually suggestive content. Such characters will not be published.\n\nCommunity guidelines: Make sure that your character and your \ncontent comply with our community guidelines. We reserve the right to remove posts that \nviolate these guidelines.\n\nIf you meet these conditions, your AI character can now be published \nand discovered by other users. Let the creativity flow and collect lots of likes.',
    },
    'pi19pixt': {
      'de': 'Jetzt AI erstellen',
      'en': 'Create AI now',
    },
    'v0bmsesx': {
      'de': 'zurück',
      'en': 'back',
    },
    'o546ybe0': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'f0dlzov1': {
      'de': 'Chats',
      'en': 'chats',
    },
    'ywyqdv1d': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'ps9qr6cu': {
      'de': 'My AI',
      'en': 'My AI',
    },
    '07lng8n9': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'gjutns1n': {
      'de': 'Profil',
      'en': 'profile',
    },
    'vcpdc5mm': {
      'de': 'Login',
      'en': 'Login',
    },
    'nihlh8ta': {
      'de': 'Logout',
      'en': 'logout',
    },
    'z3mt6of3': {
      'de': 'CREATE',
      'en': 'CREATE',
    },
  },
  // MyAI
  {
    '5mrtk0s5': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'msbmkd48': {
      'de': 'Chats',
      'en': 'chats',
    },
    'su19gi2u': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    'jv01ei5t': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'juml0b2z': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'ul7tztuj': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'lfcp5xaf': {
      'de': 'Login',
      'en': 'Login',
    },
    '8fdy7ftv': {
      'de': 'Deine erstellten ',
      'en': 'Your created',
    },
    'x37ur6nc': {
      'de': 'AI-',
      'en': 'AI-',
    },
    'ti1cat85': {
      'de': 'Charactere',
      'en': 'characters',
    },
    '7v63qfs2': {
      'de': 'Die heißesten AI-Charaktere der Stadt - \nJetzt entdecken!',
      'en': 'The hottest AI characters in town - \nDiscover them now!',
    },
    '30b5fs3w': {
      'de': 'Du hast noch keinen AI Character ',
      'en': 'You don\'t have an AI character yet',
    },
    'vrzxl590': {
      'de': 'Jetzt Character erstellen',
      'en': 'Create character now',
    },
    '5onbgy7d': {
      'de': 'Deine erstellten ',
      'en': 'Your created',
    },
    'wreahjt0': {
      'de': 'AI-',
      'en': 'AI-',
    },
    'lhq82og9': {
      'de': 'Charactere',
      'en': 'characters',
    },
    '76shhlgq': {
      'de': 'Die heißesten AI-Charaktere der Stadt - \nJetzt entdecken!',
      'en': 'The hottest AI characters in town - \nDiscover them now!',
    },
    'dxjc57wh': {
      'de': 'Du hast noch keinen AI Character ',
      'en': 'You don\'t have an AI character yet',
    },
    'f0raubc0': {
      'de': 'Jetzt Character erstellen',
      'en': 'Create character now',
    },
    'fyu632vm': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'b8bj46d0': {
      'de': 'Chats',
      'en': 'chats',
    },
    '31hxmk4h': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'qq1eb0s7': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'wrugfwh4': {
      'de': 'Premium',
      'en': 'Premium',
    },
    '3o6488n3': {
      'de': 'Profil',
      'en': 'profile',
    },
    '4ifg9x7d': {
      'de': 'Login',
      'en': 'Login',
    },
    '27gjs2ks': {
      'de': 'Logout',
      'en': 'logout',
    },
    'wzftfr6t': {
      'de': 'MY AI',
      'en': 'MY AI',
    },
  },
  // Chats
  {
    'uvvgwpk4': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'b5nor30j': {
      'de': 'Chats',
      'en': 'chats',
    },
    'einogj3n': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    '20km9eon': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'xo46ysy1': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    '54nefpbs': {
      'de': 'User profil',
      'en': 'user profile',
    },
    '968mkcmw': {
      'de': 'Login',
      'en': 'Login',
    },
    '5ey23c9i': {
      'de': 'Chats',
      'en': 'chats',
    },
    'zzdmdzpv': {
      'de': 'Du hast noch keinen Chat',
      'en': 'You don\'t have a chat yet',
    },
    'fho1dj62': {
      'de': 'Jetzt Chatpartner entdecken!',
      'en': 'Discover chat partners now!',
    },
    'hfcq76iw': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'ovxnmf2p': {
      'de': 'Chats',
      'en': 'chats',
    },
    'hre89vof': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'ih8ya1ja': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'dllrrzv9': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'ddwgqcsi': {
      'de': 'Profil',
      'en': 'profile',
    },
    'wco38ex4': {
      'de': 'Login',
      'en': 'Login',
    },
    'b68ptkce': {
      'de': 'Logout',
      'en': 'logout',
    },
    'ki0q4pzf': {
      'de': 'CHATS',
      'en': 'CHATS',
    },
  },
  // characterProfil
  {
    '92rzt67b': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'ptd0wgii': {
      'de': 'Chats',
      'en': 'chats',
    },
    'wmpriee8': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    '9p4f1nf7': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'fvxu7mml': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'vidmec88': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'ly0r8qj2': {
      'de': 'Login',
      'en': 'Login',
    },
    'so8w2mal': {
      'de': 'Profil',
      'en': 'profile',
    },
    'kaz0liuo': {
      'de': 'Persönlichkeit',
      'en': 'personality',
    },
    '1llijye6': {
      'de': 'Charakter',
      'en': 'character',
    },
    '973c4fsb': {
      'de': 'Intimes verhalten',
      'en': 'Intimate behavior',
    },
    'ti7brgp5': {
      'de': 'Klick für ein Like!',
      'en': 'Click for a like!',
    },
    'fs37hwgp': {
      'de': 'Chat',
      'en': 'chat',
    },
    'rjg429qq': {
      'de': 'Foto',
      'en': 'photo',
    },
    'vuns87e9': {
      'de': 'Gallery',
      'en': 'Gallery',
    },
    'yh3b41v4': {
      'de': 'Chat starten',
      'en': 'Start chat',
    },
    '8fpo5ud5': {
      'de': 'Bild erstellen',
      'en': 'create image',
    },
    'hly1liql': {
      'de': 'Klick für ein Like!',
      'en': 'Click for a like!',
    },
    'y9d2kizb': {
      'de': 'Profil',
      'en': 'profile',
    },
    'go3jylcm': {
      'de': 'Persönlichkeit',
      'en': 'personality',
    },
    'kzdzvg15': {
      'de': 'Charakter',
      'en': 'character',
    },
    'onng2vhu': {
      'de': 'Intimes verhalten',
      'en': 'Intimate behavior',
    },
    'ozow5qmx': {
      'de': 'Gallery',
      'en': 'Gallery',
    },
    'sh7k6lnf': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'q0t8ckrk': {
      'de': 'Chats',
      'en': 'chats',
    },
    'mknr80p0': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    '16fioz52': {
      'de': 'My AI',
      'en': 'My AI',
    },
    '7qlumd8b': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'wir4e0qs': {
      'de': 'Profil',
      'en': 'profile',
    },
    't31ep6hk': {
      'de': 'Login',
      'en': 'Login',
    },
    'j0putu3q': {
      'de': 'Logout',
      'en': 'logout',
    },
    'h7fyp3zw': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // Explore
  {
    'f9qzbbfl': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'eq6s2hng': {
      'de': 'Chats',
      'en': 'chats',
    },
    'guseos6t': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    't8btwvv4': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'fvp0pupc': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'z6ywcml8': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'mm4974h4': {
      'de': 'Login',
      'en': 'Login',
    },
    'c5u3y3sz': {
      'de': 'Coole ',
      'en': 'cool',
    },
    'ttntro0w': {
      'de': 'Charactere \n',
      'en': 'characters',
    },
    'v1nyopgj': {
      'de': 'Jetzt entdecken!',
      'en': 'Discover now!',
    },
    'sdc2gk04': {
      'de': 'Coole ',
      'en': 'cool',
    },
    'tamh2808': {
      'de': 'Charactere ',
      'en': 'characters',
    },
    'm7rk17lk': {
      'de': 'Jetzt entdecken!',
      'en': 'Discover now!',
    },
    'ejaksq8j': {
      'de': 'Die heißesten AI-Charaktere der Stadt - \nJetzt entdecken!',
      'en': 'The hottest AI characters in town - \nDiscover them now!',
    },
    '6773pvay': {
      'de': 'Frauen',
      'en': 'Women',
    },
    '7733g5r2': {
      'de': 'Männer',
      'en': 'Men',
    },
    '6mx5k5ui': {
      'de': 'Anime',
      'en': 'Anime',
    },
    'bs1btta7': {
      'de': 'Frauen',
      'en': 'Women',
    },
    '9uy6cly0': {
      'de': 'Männer',
      'en': 'Men',
    },
    '82fvngpe': {
      'de': 'Anime',
      'en': 'Anime',
    },
    'dp7efind': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'xs37856e': {
      'de': 'Chats',
      'en': 'chats',
    },
    '5iqoueq2': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    '01exg79c': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'j41d4cwa': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'p5wvjo2x': {
      'de': 'Profil',
      'en': 'profile',
    },
    '53surfm8': {
      'de': 'Login',
      'en': 'Login',
    },
    'r3dav8z8': {
      'de': 'Logout',
      'en': 'logout',
    },
    'uiknu893': {
      'de': 'Explore',
      'en': 'Explore',
    },
  },
  // GetPremium
  {
    'gi6emzb6': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'hh7u03fs': {
      'de': 'Chats',
      'en': 'chats',
    },
    'bhw067fl': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    'nonunwb9': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'p2lk2dok': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'kouzdlg7': {
      'de': 'User profil',
      'en': 'user profile',
    },
    '9y3d2ts0': {
      'de': 'Login',
      'en': 'Login',
    },
    'y4ejkfsl': {
      'de': 'Genieße AI ohne Limits!',
      'en': 'Enjoy AI without limits!',
    },
    'eo9ilc25': {
      'de': 'Werde Premium und spare bis zu 60%!',
      'en': 'Become Premium and save up to 60%!',
    },
    'q0wjfdz5': {
      'de': '1 Monat',
      'en': '1 month',
    },
    '2axs2vwv': {
      'de': 'statt',
      'en': 'instead of',
    },
    'o1qt1xqz': {
      'de': '€24,90',
      'en': '€24.90',
    },
    '2e5fcv31': {
      'de': '€12,90 Monatlich',
      'en': '€12.90 Monthly',
    },
    'egvqei32': {
      'de': '€12',
      'en': '€12',
    },
    'ztqpi0cw': {
      'de': '.90',
      'en': '.90',
    },
    'r3mvdbd0': {
      'de': ' /monat',
      'en': '/month',
    },
    '9fia826n': {
      'de': '50% ersparnis',
      'en': '50% savings',
    },
    'z5ups3sb': {
      'de': '12 Monate',
      'en': '12 months',
    },
    'cvviwpxc': {
      'de': 'statt',
      'en': 'instead of',
    },
    'ccbwlcez': {
      'de': '€298,80',
      'en': '€298.80',
    },
    '3wl6renw': {
      'de': '€118,00 pro Jahr',
      'en': '€118.00 per year',
    },
    '0oqkc93i': {
      'de': '€9',
      'en': '€9',
    },
    '7hwab6is': {
      'de': '.90',
      'en': '.90',
    },
    'muadd7s1': {
      'de': ' /monat',
      'en': '/month',
    },
    'zlwhlfeh': {
      'de': '60% ersparnis',
      'en': '60% savings',
    },
    'liezeb4q': {
      'de': 'Jederzeit kündbar',
      'en': 'Can be canceled at any time',
    },
    'xfsvtudz': {
      'de': 'Es gelten unsere ',
      'en': 'Our',
    },
    'y27e3f26': {
      'de': 'AGB',
      'en': 'Terms and Conditions',
    },
    'h905q76l': {
      'de': 'Es gelten unsere AGB',
      'en': 'Our terms and conditions apply',
    },
    'daenn3q2': {
      'de': 'Jetzt upgraden!',
      'en': 'Upgrade now!',
    },
    '742mx90q': {
      'de': 'Exclusiv für Premium',
      'en': 'Exclusively for Premium',
    },
    'ogzh193z': {
      'de': 'Unbegrenzt Chatten',
      'en': 'Unlimited Chatting',
    },
    'gdbiwkr5': {
      'de': 'Unbegrenzt AI Partner erstellen',
      'en': 'Create unlimited AI partners',
    },
    '12lkbwto': {
      'de': 'Vorrangiger Support',
      'en': 'Priority Support',
    },
    'y5d2y00c': {
      'de': 'Chat Personalisation',
      'en': 'Chat Personalization',
    },
    'usyohto1': {
      'de': 'Unschärfe von Bildern entfernen',
      'en': 'Remove blur from images',
    },
    'mrdpsw20': {
      'de': 'Schnellere Reaktionszeit',
      'en': 'Faster response time',
    },
    'edng310l': {
      'de': 'Explore',
      'en': 'Explore',
    },
    '086gtd09': {
      'de': 'Chats',
      'en': 'chats',
    },
    '2yw8qltb': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    's5dsd1w2': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'p4biedhq': {
      'de': 'Premium',
      'en': 'Premium',
    },
    '5yzpyotu': {
      'de': 'Profil',
      'en': 'profile',
    },
    'v95nb3mq': {
      'de': 'Login',
      'en': 'Login',
    },
    'gx3cyc1v': {
      'de': 'Logout',
      'en': 'logout',
    },
    '6jz1lyl1': {
      'de': 'PREMIUM',
      'en': 'PREMIUM',
    },
  },
  // Datenschutz
  {
    '423osjo7': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'cy9saq65': {
      'de': 'Chats',
      'en': 'chats',
    },
    '8johuncp': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    'yq642y7b': {
      'de': 'Message...',
      'en': 'Message...',
    },
    '9uko0jpk': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'r4yjceig': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'fukq3nxc': {
      'de': 'Login',
      'en': 'Login',
    },
    'jakbkfj2': {
      'de': 'Datenschutz',
      'en': 'data protection',
    },
    'ym7es8sl': {
      'de':
          'Datenschutzerklärung\n\n1. Datenschutz auf einen Blick\n\nAllgemeine Hinweise\nDie folgenden Hinweise geben einen einfachen Überblick darüber, was mit Ihren personenbezogenen Daten\npassiert, wenn Sie diese Website besuchen. Personenbezogene Daten sind alle Daten, mit denen Sie\npersönlich identifiziert werden können. Ausführliche Informationen zum Thema Datenschutz entnehmen\nSie unserer unter diesem Text aufgeführten Datenschutzerklärung.\nDatenerfassung auf dieser Website\n\nWer ist verantwortlich für die Datenerfassung auf dieser Website?\n\nDie Datenverarbeitung auf dieser Website erfolgt durch den Websitebetreiber. Dessen Kontaktdaten\nkönnen Sie dem Abschnitt „Hinweis zur Verantwortlichen Stelle“ in dieser Datenschutzerklärung entnehmen.\nWie erfassen wir Ihre Daten?\nIhre Daten werden zum einen dadurch erhoben, dass Sie uns diese mitteilen. Hierbei kann es sich z. B. um\nDaten handeln, die Sie in ein Kontaktformular eingeben.\nAndere Daten werden automatisch oder nach Ihrer Einwilligung beim Besuch der Website durch unsere ITSysteme\nerfasst. Das sind vor allem technische Daten (z. B. Internetbrowser, Betriebssystem oder Uhrzeit\ndes Seitenaufrufs). Die Erfassung dieser Daten erfolgt automatisch, sobald Sie diese Website betreten.\nWofür nutzen wir Ihre Daten?\nEin Teil der Daten wird erhoben, um eine fehlerfreie Bereitstellung der Website zu gewährleisten. Andere\nDaten können zur Analyse Ihres Nutzerverhaltens verwendet werden.\nWelche Rechte haben Sie bezüglich Ihrer Daten?\nSie haben jederzeit das Recht, unentgeltlich Auskunft über Herkunft, Empfänger und Zweck Ihrer\ngespeicherten personenbezogenen Daten zu erhalten. Sie haben außerdem ein Recht, die Berichtigung oder\nLöschung dieser Daten zu verlangen. Wenn Sie eine Einwilligung zur Datenverarbeitung erteilt haben,\nkönnen Sie diese Einwilligung jederzeit für die Zukunft widerrufen. Außerdem haben Sie das Recht, unter\nbestimmten Umständen die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen.\nDes Weiteren steht Ihnen ein Beschwerderecht bei der zuständigen Aufsichtsbehörde zu.\nHierzu sowie zu weiteren Fragen zum Thema Datenschutz können Sie sich jederzeit an uns wenden.\nAnalyse-Tools und Tools von Drittanbietern\nBeim Besuch dieser Website kann Ihr Surf-Verhalten statistisch ausgewertet werden. Das geschieht vor\nallem mit sogenannten Analyseprogrammen.\nDetaillierte Informationen zu diesen Analyseprogrammen finden Sie in der folgenden\nDatenschutzerklärung.\n\n2. Hosting\n\nWir hosten die Inhalte unserer Website bei folgendem Anbieter:\n\nAmazon Web Services (AWS)\nAnbieter ist die Amazon Web Services EMEA SARL, 38 Avenue John F. Kennedy, 1855 Luxemburg\n(nachfolgend AWS).\n\nWenn Sie unsere Website besuchen, werden Ihre personenbezogenen Daten auf den Servern von AWS\nverarbeitet. Hierbei können auch personenbezogene Daten an das Mutterunternehmen von AWS in die USA\nübermittelt werden. Die Datenübertragung in die USA wird auf die EU-Standardvertragsklauseln gestützt.\nDetails finden Sie hier:\nhttps://aws.amazon.com/de/blogs/security/aws-gdpr-data-processing-addendum/.\nWeitere Informationen entnehmen Sie der Datenschutzerklärung von AWS:\nhttps://aws.amazon.com/de/privacy/?nc1=f_pr.\nDie Verwendung von AWS erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Wir haben ein berechtigtes\nInteresse an einer möglichst zuverlässigen Darstellung unserer Website. Sofern eine entsprechende\nEinwilligung abgefragt wurde, erfolgt die Verarbeitung ausschließlich auf Grundlage von Art. 6 Abs. 1 lit. a\nDSGVO und § 25 Abs. 1 TTDSG, soweit die Einwilligung die Speicherung von Cookies oder den Zugriff auf\nInformationen im Endgerät des Nutzers (z. B. Device-Fingerprinting) im Sinne des TTDSG umfasst. Die\nEinwilligung ist jederzeit widerrufbar.\nDas Unternehmen verfügt über eine Zertifizierung nach dem „EU-US Data Privacy Framework“ (DPF). Der\nDPF ist ein Übereinkommen zwischen der Europäischen Union und den USA, der die Einhaltung\neuropäischer Datenschutzstandards bei Datenverarbeitungen in den USA gewährleisten soll. Jedes nach\ndem DPF zertifizierte Unternehmen verpflichtet sich, diese Datenschutzstandards einzuhalten. \nWeitere\nInformationen hierzu erhalten Sie vom Anbieter unter folgendem Link:\nhttps://www.dataprivacyframework.gov/s/participant-search/participantdetail?\ncontact=true&id=a2zt0000000TOWQAA4&status=Active\nAuftragsverarbeitung\nWir haben einen Vertrag über Auftragsverarbeitung (AVV) zur Nutzung des oben genannten Dienstes\ngeschlossen. Hierbei handelt es sich um einen datenschutzrechtlich vorgeschriebenen Vertrag, der\ngewährleistet, dass dieser die personenbezogenen Daten unserer Websitebesucher nur nach unseren\nWeisungen und unter Einhaltung der DSGVO verarbeitet.\n\n3. Allgemeine Hinweise und Pflichtinformationen\n\nDatenschutz\n\nDie Betreiber dieser Seiten nehmen den Schutz Ihrer persönlichen Daten sehr ernst. Wir behandeln Ihre\npersonenbezogenen Daten vertraulich und entsprechend den gesetzlichen Datenschutzvorschriften sowie\ndieser Datenschutzerklärung.\nWenn Sie diese Website benutzen, werden verschiedene personenbezogene Daten erhoben.\nPersonenbezogene Daten sind Daten, mit denen Sie persönlich identifiziert werden können. Die vorliegende\nDatenschutzerklärung erläutert, welche Daten wir erheben und wofür wir sie nutzen. Sie erläutert auch, wie\nund zu welchem Zweck das geschieht.\nWir weisen darauf hin, dass die Datenübertragung im Internet (z. B. bei der Kommunikation per E-Mail)\nSicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht\nmöglich.\nHinweis zur verantwortlichen Stelle\nDie verantwortliche Stelle für die Datenverarbeitung auf dieser Website ist:\n\nCapepointtrading 38 (PTY) LTD\nTelefon: +43 (0)7201270109\nE-Mail: office@rasondo.com\n\nVerantwortliche Stelle ist die natürliche oder juristische Person, die allein oder gemeinsam mit anderen über\ndie Zwecke und Mittel der Verarbeitung von personenbezogenen Daten (z. B. Namen, E-Mail-Adressen o. Ä.)\nentscheidet.\nSpeicherdauer\nSoweit innerhalb dieser Datenschutzerklärung keine speziellere Speicherdauer genannt wurde, verbleiben\nIhre personenbezogenen Daten bei uns, bis der Zweck für die Datenverarbeitung entfällt. Wenn Sie ein\nberechtigtes Löschersuchen geltend machen oder eine Einwilligung zur Datenverarbeitung widerrufen,\nwerden Ihre Daten gelöscht, sofern wir keine anderen rechtlich zulässigen Gründe für die Speicherung Ihrer\npersonenbezogenen Daten haben (z. B. steuer- oder handelsrechtliche Aufbewahrungsfristen); im\nletztgenannten Fall erfolgt die Löschung nach Fortfall dieser Gründe.\n\nAllgemeine Hinweise zu den Rechtsgrundlagen der Datenverarbeitung auf dieser\nWebsite\nSofern Sie in die Datenverarbeitung eingewilligt haben, verarbeiten wir Ihre personenbezogenen Daten auf\nGrundlage von Art. 6 Abs. 1 lit. a DSGVO bzw. Art. 9 Abs. 2 lit. a DSGVO, sofern besondere Datenkategorien\nnach Art. 9 Abs. 1 DSGVO verarbeitet werden. Im Falle einer ausdrücklichen Einwilligung in die Übertragung\npersonenbezogener Daten in Drittstaaten erfolgt die Datenverarbeitung außerdem auf Grundlage von Art.\n49 Abs. 1 lit. a DSGVO. Sofern Sie in die Speicherung von Cookies oder in den Zugriff auf Informationen in\nIhr Endgerät (z. B. via Device-Fingerprinting) eingewilligt haben, erfolgt die Datenverarbeitung zusätzlich\nauf Grundlage von § 25 Abs. 1 TTDSG. Die Einwilligung ist jederzeit widerrufbar. Sind Ihre Daten zur\nVertragserfüllung oder zur Durchführung vorvertraglicher Maßnahmen erforderlich, verarbeiten wir Ihre\nDaten auf Grundlage des Art. 6 Abs. 1 lit. b DSGVO. Des Weiteren verarbeiten wir Ihre Daten, sofern diese\nzur Erfüllung einer rechtlichen Verpflichtung erforderlich sind auf Grundlage von Art. 6 Abs. 1 lit. c DSGVO.\nDie Datenverarbeitung kann ferner auf Grundlage unseres berechtigten Interesses nach Art. 6 Abs. 1 lit. f\nDSGVO erfolgen. Über die jeweils im Einzelfall einschlägigen Rechtsgrundlagen wird in den folgenden\nAbsätzen dieser Datenschutzerklärung informiert.\nHinweis zur Datenweitergabe in datenschutzrechtlich nicht sichere Drittstaaten sowie\ndie Weitergabe an US-Unternehmen, die nicht DPF-zertifiziert sind\nWir verwenden unter anderem Tools von Unternehmen mit Sitz in datenschutzrechtlich nicht sicheren\nDrittstaaten sowie US-Tools, deren Anbieter nicht nach dem EU-US-Data Privacy Framework (DPF)\nzertifiziert sind. Wenn diese Tools aktiv sind, können Ihre personenbezogene Daten in diese Staaten\nübertragen und dort verarbeitet werden. Wir weisen darauf hin, dass in datenschutzrechtlich unsicheren\nDrittstaaten kein mit der EU vergleichbares Datenschutzniveau garantiert werden kann.\nWir weisen darauf hin, dass die USA als sicherer Drittstaat grundsätzlich ein mit der EU vergleichbares\nDatenschutzniveau aufweisen. Eine Datenübertragung in die USA ist danach zulässig, wenn der Empfänger\neine Zertifizierung unter dem „EU-US Data Privacy Framework“ (DPF) besitzt oder über geeignete\nzusätzliche Garantien verfügt. Informationen zu Übermittlungen an Drittstaaten einschließlich der\nDatenempfänger finden Sie in dieser Datenschutzerklärung.\nEmpfänger von personenbezogenen Daten\nIm Rahmen unserer Geschäftstätigkeit arbeiten wir mit verschiedenen externen Stellen zusammen. Dabei\nist teilweise auch eine Übermittlung von personenbezogenen Daten an diese externen Stellen erforderlich.\nWir geben personenbezogene Daten nur dann an externe Stellen weiter, wenn dies im Rahmen einer\nVertragserfüllung erforderlich ist, wenn wir gesetzlich hierzu verpflichtet sind (z. B. Weitergabe von Daten\nan Steuerbehörden), wenn wir ein berechtigtes Interesse nach Art. 6 Abs. 1 lit. f DSGVO an der Weitergabe\nhaben oder wenn eine sonstige Rechtsgrundlage die Datenweitergabe erlaubt. Beim Einsatz von\nAuftragsverarbeitern geben wir personenbezogene Daten unserer Kunden nur auf Grundlage eines gültigen\nVertrags über Auftragsverarbeitung weiter. Im Falle einer gemeinsamen Verarbeitung wird ein Vertrag über\ngemeinsame Verarbeitung geschlossen.\nWiderruf Ihrer Einwilligung zur Datenverarbeitung\nViele Datenverarbeitungsvorgänge sind nur mit Ihrer ausdrücklichen Einwilligung möglich. Sie können eine\nbereits erteilte Einwilligung jederzeit widerrufen. Die Rechtmäßigkeit der bis zum Widerruf erfolgten\nDatenverarbeitung bleibt vom Widerruf unberührt.\nWiderspruchsrecht gegen die Datenerhebung in besonderen Fällen sowie gegen\nDirektwerbung (Art. 21 DSGVO)\n\nWENN DIE DATENVERARBEITUNG AUF GRUNDLAGE VON ART. 6 ABS. 1 LIT. E ODER F DSGVO\nERFOLGT, HABEN SIE JEDERZEIT DAS RECHT, AUS GRÜNDEN, DIE SICH AUS IHRER BESONDEREN\nSITUATION ERGEBEN, GEGEN DIE VERARBEITUNG IHRER PERSONENBEZOGENEN DATEN\nWIDERSPRUCH EINZULEGEN; DIES GILT AUCH FÜR EIN AUF DIESE BESTIMMUNGEN GESTÜTZTES\nPROFILING. DIE JEWEILIGE RECHTSGRUNDLAGE, AUF DENEN EINE VERARBEITUNG BERUHT,\nENTNEHMEN SIE DIESER DATENSCHUTZERKLÄRUNG. WENN SIE WIDERSPRUCH EINLEGEN,\nWERDEN WIR IHRE BETROFFENEN PERSONENBEZOGENEN DATEN NICHT MEHR VERARBEITEN, ES\nSEI DENN, WIR KÖNNEN ZWINGENDE SCHUTZWÜRDIGE GRÜNDE FÜR DIE VERARBEITUNG\nNACHWEISEN, DIE IHRE INTERESSEN, RECHTE UND FREIHEITEN ÜBERWIEGEN ODER DIE\nVERARBEITUNG DIENT DER GELTENDMACHUNG, AUSÜBUNG ODER VERTEIDIGUNG VON\nRECHTSANSPRÜCHEN (WIDERSPRUCH NACH ART. 21 ABS. 1 DSGVO).\nWERDEN IHRE PERSONENBEZOGENEN DATEN VERARBEITET, UM DIREKTWERBUNG ZU BETREIBEN,\nSO HABEN SIE DAS RECHT, JEDERZEIT WIDERSPRUCH GEGEN DIE VERARBEITUNG SIE\nBETREFFENDER PERSONENBEZOGENER DATEN ZUM ZWECKE DERARTIGER WERBUNG\nEINZULEGEN; DIES GILT AUCH FÜR DAS PROFILING, SOWEIT ES MIT SOLCHER DIREKTWERBUNG IN\nVERBINDUNG STEHT. WENN SIE WIDERSPRECHEN, WERDEN IHRE PERSONENBEZOGENEN DATEN\nANSCHLIESSEND NICHT MEHR ZUM ZWECKE DER DIREKTWERBUNG VERWENDET (WIDERSPRUCH\nNACH ART. 21 ABS. 2 DSGVO).\n\nBeschwerderecht bei der zuständigen Aufsichtsbehörde\nIm Falle von Verstößen gegen die DSGVO steht den Betroffenen ein Beschwerderecht bei einer\nAufsichtsbehörde, insbesondere in dem Mitgliedstaat ihres gewöhnlichen Aufenthalts, ihres Arbeitsplatzes\noder des Orts des mutmaßlichen Verstoßes zu. Das Beschwerderecht besteht unbeschadet anderweitiger\nverwaltungsrechtlicher oder gerichtlicher Rechtsbehelfe.\nRecht auf Datenübertragbarkeit\nSie haben das Recht, Daten, die wir auf Grundlage Ihrer Einwilligung oder in Erfüllung eines Vertrags\nautomatisiert verarbeiten, an sich oder an einen Dritten in einem gängigen, maschinenlesbaren Format\naushändigen zu lassen. Sofern Sie die direkte Übertragung der Daten an einen anderen Verantwortlichen\nverlangen, erfolgt dies nur, soweit es technisch machbar ist.\n\nAuskunft, Berichtigung und Löschung\n\nSie haben im Rahmen der geltenden gesetzlichen Bestimmungen jederzeit das Recht auf unentgeltliche\nAuskunft über Ihre gespeicherten personenbezogenen Daten, deren Herkunft und Empfänger und den\nZweck der Datenverarbeitung und ggf. ein Recht auf Berichtigung oder Löschung dieser Daten. Hierzu sowie\nzu weiteren Fragen zum Thema personenbezogene Daten können Sie sich jederzeit an uns wenden.\nRecht auf Einschränkung der Verarbeitung\nSie haben das Recht, die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen.\nHierzu können Sie sich jederzeit an uns wenden. Das Recht auf Einschränkung der Verarbeitung besteht in\nfolgenden Fällen:\nWenn Sie die Richtigkeit Ihrer bei uns gespeicherten personenbezogenen Daten bestreiten, benötigen wir\nin der Regel Zeit, um dies zu überprüfen. Für die Dauer der Prüfung haben Sie das Recht, die\nEinschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen.\nWenn die Verarbeitung Ihrer personenbezogenen Daten unrechtmäßig geschah/geschieht, können Sie\nstatt der Löschung die Einschränkung der Datenverarbeitung verlangen.\nWenn wir Ihre personenbezogenen Daten nicht mehr benötigen, Sie sie jedoch zur Ausübung,\nVerteidigung oder Geltendmachung von Rechtsansprüchen benötigen, haben Sie das Recht, statt der\nLöschung die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen.\nWenn Sie einen Widerspruch nach Art. 21 Abs. 1 DSGVO eingelegt haben, muss eine Abwägung zwischen\nIhren und unseren Interessen vorgenommen werden. Solange noch nicht feststeht, wessen Interessen\nüberwiegen, haben Sie das Recht, die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten\nzu verlangen.\nWenn Sie die Verarbeitung Ihrer personenbezogenen Daten eingeschränkt haben, dürfen diese Daten – von\nihrer Speicherung abgesehen – nur mit Ihrer Einwilligung oder zur Geltendmachung, Ausübung oder\nVerteidigung von Rechtsansprüchen oder zum Schutz der Rechte einer anderen natürlichen oder\njuristischen Person oder aus Gründen eines wichtigen öffentlichen Interesses der Europäischen Union oder\neines Mitgliedstaats verarbeitet werden.\nSSL- bzw. TLS-Verschlüsselung\nDiese Seite nutzt aus Sicherheitsgründen und zum Schutz der Übertragung vertraulicher Inhalte, wie zum\nBeispiel Bestellungen oder Anfragen, die Sie an uns als Seitenbetreiber senden, eine SSL- bzw. TLSVerschlüsselung.\nEine verschlüsselte Verbindung erkennen Sie daran, dass die Adresszeile des Browsers von\n„http://“ auf „https://“ wechselt und an dem Schloss-Symbol in Ihrer Browserzeile.\nWenn die SSL- bzw. TLS-Verschlüsselung aktiviert ist, können die Daten, die Sie an uns übermitteln, nicht\nvon Dritten mitgelesen werden.\nVerschlüsselter Zahlungsverkehr auf dieser Website\nBesteht nach dem Abschluss eines kostenpflichtigen Vertrags eine Verpflichtung, uns Ihre Zahlungsdaten\n(z. B. Kontonummer bei Einzugsermächtigung) zu übermitteln, werden diese Daten zur Zahlungsabwicklung\nbenötigt.\nDer Zahlungsverkehr über die gängigen Zahlungsmittel (Visa/MasterCard, Lastschriftverfahren) erfolgt\nausschließlich über eine verschlüsselte SSL- bzw. TLS-Verbindung. Eine verschlüsselte Verbindung erkennen\nSie daran, dass die Adresszeile des Browsers von „http://“ auf „https://“ wechselt und an dem Schloss-Symbol\nin Ihrer Browserzeile.\nBei verschlüsselter Kommunikation können Ihre Zahlungsdaten, die Sie an uns übermitteln, nicht von\nDritten mitgelesen werden.\nWiderspruch gegen Werbe-E-Mails\nDer Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten zur Übersendung von\nnicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit widersprochen. Die\nBetreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von\nWerbeinformationen, etwa durch Spam-E-Mails, vor.\n4. Datenerfassung auf dieser Website\nCookies\nUnsere Internetseiten verwenden so genannte „Cookies“. Cookies sind kleine Datenpakete und richten auf\n8 / 17\nIhrem Endgerät keinen Schaden an. Sie werden entweder vorübergehend für die Dauer einer Sitzung\n(Session-Cookies) oder dauerhaft (permanente Cookies) auf Ihrem Endgerät gespeichert. Session-Cookies\nwerden nach Ende Ihres Besuchs automatisch gelöscht. Permanente Cookies bleiben auf Ihrem Endgerät\ngespeichert, bis Sie diese selbst löschen oder eine automatische Löschung durch Ihren Webbrowser erfolgt.\nCookies können von uns (First-Party-Cookies) oder von Drittunternehmen stammen (sog. Third-Party-\nCookies). Third-Party-Cookies ermöglichen die Einbindung bestimmter Dienstleistungen von\nDrittunternehmen innerhalb von Webseiten (z. B. Cookies zur Abwicklung von Zahlungsdienstleistungen).\nCookies haben verschiedene Funktionen. Zahlreiche Cookies sind technisch notwendig, da bestimmte\nWebseitenfunktionen ohne diese nicht funktionieren würden (z. B. die Warenkorbfunktion oder die Anzeige\nvon Videos). Andere Cookies können zur Auswertung des Nutzerverhaltens oder zu Werbezwecken\nverwendet werden.\nCookies, die zur Durchführung des elektronischen Kommunikationsvorgangs, zur Bereitstellung\nbestimmter, von Ihnen erwünschter Funktionen (z. B. für die Warenkorbfunktion) oder zur Optimierung der\nWebsite (z. B. Cookies zur Messung des Webpublikums) erforderlich sind (notwendige Cookies), werden auf\nGrundlage von Art. 6 Abs. 1 lit. f DSGVO gespeichert, sofern keine andere Rechtsgrundlage angegeben wird.\nDer Websitebetreiber hat ein berechtigtes Interesse an der Speicherung von notwendigen Cookies zur\ntechnisch fehlerfreien und optimierten Bereitstellung seiner Dienste. Sofern eine Einwilligung zur\nSpeicherung von Cookies und vergleichbaren Wiedererkennungstechnologien abgefragt wurde, erfolgt die\nVerarbeitung ausschließlich auf Grundlage dieser Einwilligung (Art. 6 Abs. 1 lit. a DSGVO und § 25 Abs. 1\nTTDSG); die Einwilligung ist jederzeit widerrufbar.\nSie können Ihren Browser so einstellen, dass Sie über das Setzen von Cookies informiert werden und\nCookies nur im Einzelfall erlauben, die Annahme von Cookies für bestimmte Fälle oder generell ausschließen\nsowie das automatische Löschen der Cookies beim Schließen des Browsers aktivieren. Bei der\nDeaktivierung von Cookies kann die Funktionalität dieser Website eingeschränkt sein.\nWelche Cookies und Dienste auf dieser Website eingesetzt werden, können Sie dieser\nDatenschutzerklärung entnehmen.\nEinwilligung mit Usercentrics\nDiese Website nutzt die Consent-Technologie von Usercentrics, um Ihre Einwilligung zur Speicherung\nbestimmter Cookies auf Ihrem Endgerät oder zum Einsatz bestimmter Technologien einzuholen und diese\ndatenschutzkonform zu dokumentieren. Anbieter dieser Technologie ist die Usercentrics GmbH, Sendlinger\nStraße 7, 80331 München, Website:\nhttps://usercentrics.com/de/ (im Folgenden „Usercentrics“).\nWenn Sie unsere Website betreten, werden folgende personenbezogene Daten an Usercentrics übertragen:\nIhre Einwilligung(en) bzw. der Widerruf Ihrer Einwilligung(en)\nIhre IP-Adresse\nInformationen über Ihren Browser\nInformationen über Ihr Endgerät\nZeitpunkt Ihres Besuchs auf der Website\nGeolocation\nDes Weiteren speichert Usercentrics ein Cookie in Ihrem Browser, um Ihnen die erteilten Einwilligungen\nbzw. deren Widerruf zuordnen zu können. Die so erfassten Daten werden gespeichert, bis Sie uns zur\nLöschung auffordern, das Usercentrics-Cookie selbst löschen oder der Zweck für die Datenspeicherung\nentfällt. Zwingende gesetzliche Aufbewahrungspflichten bleiben unberührt.\nDas Usercentrics-Banner auf dieser Website wurde mit Hilfe von eRecht24 konfiguriert. Das erkennen Sie\n\ndaran, dass im Banner das Logo von eRecht24 auftaucht. Um das eRecht24-Logo im Banner auszuspielen,\nwird eine Verbindung zum Bildserver von eRecht24 hergestellt. Hierbei wird auch die IP-Adresse\nübertragen, die jedoch nur in anonymisierter Form in den Server-Logs gespeichert wird. Der Bildserver von\neRecht24 befindet sich in Deutschland bei einem deutschen Anbieter. Das Banner selbst wird ausschließlich\nvon Usercentrics zur Verfügung gestellt.\nDer Einsatz von Usercentrics erfolgt, um die gesetzlich vorgeschriebenen Einwilligungen für den Einsatz\nbestimmter Technologien einzuholen. Rechtsgrundlage hierfür ist Art. 6 Abs. 1 lit. c DSGVO.\nServer-Log-Dateien\nDer Provider der Seiten erhebt und speichert automatisch Informationen in so genannten Server-Log-\nDateien, die Ihr Browser automatisch an uns übermittelt. Dies sind:\nBrowsertyp und Browserversion\nverwendetes Betriebssystem\nReferrer URL\nHostname des zugreifenden Rechners\nUhrzeit der Serveranfrage\nIP-Adresse\nEine Zusammenführung dieser Daten mit anderen Datenquellen wird nicht vorgenommen.\nDie Erfassung dieser Daten erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Der Websitebetreiber hat\nein berechtigtes Interesse an der technisch fehlerfreien Darstellung und der Optimierung seiner Website –\nhierzu müssen die Server-Log-Files erfasst werden.\nKontaktformular\nWenn Sie uns per Kontaktformular Anfragen zukommen lassen, werden Ihre Angaben aus dem\nAnfrageformular inklusive der von Ihnen dort angegebenen Kontaktdaten zwecks Bearbeitung der Anfrage\nund für den Fall von Anschlussfragen bei uns gespeichert. Diese Daten geben wir nicht ohne Ihre\nEinwilligung weiter.\nDie Verarbeitung dieser Daten erfolgt auf Grundlage von Art. 6 Abs. 1 lit. b DSGVO, sofern Ihre Anfrage mit\nder Erfüllung eines Vertrags zusammenhängt oder zur Durchführung vorvertraglicher Maßnahmen\nerforderlich ist. In allen übrigen Fällen beruht die Verarbeitung auf unserem berechtigten Interesse an der\neffektiven Bearbeitung der an uns gerichteten Anfragen (Art. 6 Abs. 1 lit. f DSGVO) oder auf Ihrer\nEinwilligung (Art. 6 Abs. 1 lit. a DSGVO) sofern diese abgefragt wurde; die Einwilligung ist jederzeit\nwiderrufbar.\nDie von Ihnen im Kontaktformular eingegebenen Daten verbleiben bei uns, bis Sie uns zur Löschung\nauffordern, Ihre Einwilligung zur Speicherung widerrufen oder der Zweck für die Datenspeicherung entfällt\n(z. B. nach abgeschlossener Bearbeitung Ihrer Anfrage). Zwingende gesetzliche Bestimmungen –\ninsbesondere Aufbewahrungsfristen – bleiben unberührt.\nAnfrage per E-Mail, Telefon oder Telefax\nWenn Sie uns per E-Mail, Telefon oder Telefax kontaktieren, wird Ihre Anfrage inklusive aller daraus\nhervorgehenden personenbezogenen Daten (Name, Anfrage) zum Zwecke der Bearbeitung Ihres Anliegens\nbei uns gespeichert und verarbeitet. Diese Daten geben wir nicht ohne Ihre Einwilligung weiter.\nDie Verarbeitung dieser Daten erfolgt auf Grundlage von Art. 6 Abs. 1 lit. b DSGVO, sofern Ihre Anfrage mit\nder Erfüllung eines Vertrags zusammenhängt oder zur Durchführung vorvertraglicher Maßnahmen\n10 / 17\nerforderlich ist. In allen übrigen Fällen beruht die Verarbeitung auf unserem berechtigten Interesse an der\neffektiven Bearbeitung der an uns gerichteten Anfragen (Art. 6 Abs. 1 lit. f DSGVO) oder auf Ihrer\nEinwilligung (Art. 6 Abs. 1 lit. a DSGVO) sofern diese abgefragt wurde; die Einwilligung ist jederzeit\nwiderrufbar.\nDie von Ihnen an uns per Kontaktanfragen übersandten Daten verbleiben bei uns, bis Sie uns zur Löschung\nauffordern, Ihre Einwilligung zur Speicherung widerrufen oder der Zweck für die Datenspeicherung entfällt\n(z. B. nach abgeschlossener Bearbeitung Ihres Anliegens). Zwingende gesetzliche Bestimmungen –\ninsbesondere gesetzliche Aufbewahrungsfristen – bleiben unberührt.\nEinsatz von Chatbots\nWir setzen Chatbots ein, um mit Ihnen zu kommunizieren. Chatbots sind in der Lage, ohne menschliche Hilfe\nauf Ihre Fragen und sonstigen Eingaben zu reagieren. Hierzu analysieren die Chatbots neben Ihren Eingaben\nweitere Daten, um passende Antworten zu geben (z. B. Namen, E-Mail-Adressen und sonstige Kontaktdaten,\nKundennummern und sonstige Identifikatoren, Bestellungen und Chatverläufe). Ferner können über den\nChatbot Ihre IP-Adresse, Logdateien, Standortinformationen und andere Metadaten erfasst werden. Diese\nDaten werden auf den Servern des Chatbot-Anbieters gespeichert.\nAuf Grundlage der erfassten Daten können Nutzerprofile erstellt werden. Außerdem können die Daten zur\nAusspielung interessengerechter Werbung genutzt werden, sofern die übrigen rechtlichen\nVoraussetzungen (insbesondere eine Einwilligung) hierfür vorliegen. Dazu können die Chatbots mit Analyseund\nWerbetools verknüpft werden.\nDie erfassten Daten können außerdem dazu genutzt werden, um unsere Chatbots und ihr Antwortverhalten\nzu verbessern (maschinelles Lernen).\nDie von Ihnen im Rahmen der Kommunikation eingegebenen Daten verbleiben bei uns bzw. dem\nChatbotbetreiber, bis Sie uns zur Löschung auffordern, Ihre Einwilligung zur Speicherung widerrufen oder\nder Zweck für die Datenspeicherung entfällt (z. B. nach abgeschlossener Bearbeitung Ihrer Anfrage).\nZwingende gesetzliche Bestimmungen – insbesondere Aufbewahrungsfristen – bleiben unberührt.\nRechtsgrundlage für den Einsatz von Chatbots ist Art. 6 Abs. 1 lit. b DSGVO, sofern der Chatbot zur\nVertragsanbahnung oder im Rahmen der Vertragserfüllung eingesetzt wird. Sofern eine entsprechende\nEinwilligung abgefragt wurde, erfolgt die Verarbeitung ausschließlich auf Grundlage von Art. 6 Abs. 1 lit. a\nDSGVO und § 25 Abs. 1 TTDSG, soweit die Einwilligung die Speicherung von Cookies oder den Zugriff auf\nInformationen im Endgerät des Nutzers (z. B. Device-Fingerprinting) im Sinne des TTDSG umfasst. Die\nEinwilligung ist jederzeit widerrufbar. In allen anderen Fällen erfolgt der Einsatz auf Grundlage unseres\nberechtigten Interesses an einer möglichst effektiven Kundenkommunikation (Art. 6 Abs. 1 lit. f DSGVO).\nRegistrierung auf dieser Website\nSie können sich auf dieser Website registrieren, um zusätzliche Funktionen auf der Seite zu nutzen. Die dazu\neingegebenen Daten verwenden wir nur zum Zwecke der Nutzung des jeweiligen Angebotes oder Dienstes,\nfür den Sie sich registriert haben. Die bei der Registrierung abgefragten Pflichtangaben müssen vollständig\nangegeben werden. Anderenfalls werden wir die Registrierung ablehnen.\nFür wichtige Änderungen etwa beim Angebotsumfang oder bei technisch notwendigen Änderungen nutzen\nwir die bei der Registrierung angegebene E-Mail-Adresse, um Sie auf diesem Wege zu informieren.\nDie Verarbeitung der bei der Registrierung eingegebenen Daten erfolgt zum Zwecke der Durchführung des\ndurch die Registrierung begründeten Nutzungsverhältnisses und ggf. zur Anbahnung weiterer Verträge (Art.\n6 Abs. 1 lit. b DSGVO).\nDie bei der Registrierung erfassten Daten werden von uns gespeichert, solange Sie auf dieser Website\n11 / 17\nregistriert sind und werden anschließend gelöscht. Gesetzliche Aufbewahrungsfristen bleiben unberührt.\nRegistrierung mit Google\nStatt einer direkten Registrierung auf dieser Website können Sie sich mit Google registrieren. Anbieter\ndieses Dienstes ist die Google Ireland Limited („Google”), Gordon House, Barrow Street, Dublin 4, Irland.\nUm sich mit Google zu registrieren, müssen Sie ausschließlich Ihre Google-Namen und Ihr Passwort\neingeben. Google wird Sie identifizieren und unserer Website Ihre Identität bestätigen.\nWenn Sie sich mit Google anmelden, ist es uns ggf. möglich bestimmte Informationen auf Ihrem Konto zu\nnutzen, um Ihr Profil bei uns zu vervollständigen. Ob und welche Informationen das sind, entscheiden Sie im\nRahmen Ihrer Google-Sicherheitseinstellungen, die Sie hier finden:\nhttps://myaccount.google.com/security und\nhttps://myaccount.google.com/permissions.\nDie Datenverarbeitung, die mit der Google-Registrierung einhergeht beruht auf unserem berechtigten\nInteresse, unseren Nutzern einen möglichst einfachen Registrierungsprozess zu ermöglichen (Art. 6 Abs. 1\nlit. f DSGVO). Da die Nutzung der Registrierungsfunktion freiwillig ist und die Nutzer selbst über die\njeweiligen Zugriffsmöglichkeiten entscheiden können, sind keine entgegenstehenden überwiegenden\nRechte der Betroffenen ersichtlich.\nDas Unternehmen verfügt über eine Zertifizierung nach dem „EU-US Data Privacy Framework“ (DPF). Der\nDPF ist ein Übereinkommen zwischen der Europäischen Union und den USA, der die Einhaltung\neuropäischer Datenschutzstandards bei Datenverarbeitungen in den USA gewährleisten soll. Jedes nach\ndem DPF zertifizierte Unternehmen verpflichtet sich, diese Datenschutzstandards einzuhalten. Weitere\nInformationen hierzu erhalten Sie vom Anbieter unter folgendem Link:\nhttps://www.dataprivacyframework.gov/s/participant-search/participantdetail?\ncontact=true&id=a2zt000000001L5AAI&status=Active\n5. Analyse-Tools und Werbung\nGoogle Analytics\nDiese Website nutzt Funktionen des Webanalysedienstes Google Analytics. Anbieter ist die Google Ireland\nLimited („Google“), Gordon House, Barrow Street, Dublin 4, Irland.\nGoogle Analytics ermöglicht es dem Websitebetreiber, das Verhalten der Websitebesucher zu analysieren.\nHierbei erhält der Websitebetreiber verschiedene Nutzungsdaten, wie z. B. Seitenaufrufe, Verweildauer,\nverwendete Betriebssysteme und Herkunft des Nutzers. Diese Daten werden dem jeweiligen Endgerät des\nUsers zugeordnet. Eine Zuordnung zu einer User-ID erfolgt nicht.\nDes Weiteren können wir mit Google Analytics u. a. Ihre Maus- und Scrollbewegungen und Klicks\naufzeichnen. Ferner verwendet Google Analytics verschiedene Modellierungsansätze, um die erfassten\nDatensätze zu ergänzen und setzt Machine-Learning-Technologien bei der Datenanalyse ein.\nGoogle Analytics verwendet Technologien, die die Wiedererkennung des Nutzers zum Zwecke der Analyse\ndes Nutzerverhaltens ermöglichen (z. B. Cookies oder Device-Fingerprinting). Die von Google erfassten\nInformationen über die Benutzung dieser Website werden in der Regel an einen Server von Google in den\nUSA übertragen und dort gespeichert.\nDie Nutzung dieses Dienstes erfolgt auf Grundlage Ihrer Einwilligung nach Art. 6 Abs. 1 lit. a DSGVO und §\n25 Abs. 1 TTDSG. Die Einwilligung ist jederzeit widerrufbar.\n12 / 17\nDie Datenübertragung in die USA wird auf die Standardvertragsklauseln der EU-Kommission gestützt.\nDetails finden Sie hier:\nhttps://privacy.google.com/businesses/controllerterms/mccs/.\nDas Unternehmen verfügt über eine Zertifizierung nach dem „EU-US Data Privacy Framework“ (DPF). Der\nDPF ist ein Übereinkommen zwischen der Europäischen Union und den USA, der die Einhaltung\neuropäischer Datenschutzstandards bei Datenverarbeitungen in den USA gewährleisten soll. Jedes nach\ndem DPF zertifizierte Unternehmen verpflichtet sich, diese Datenschutzstandards einzuhalten. Weitere\nInformationen hierzu erhalten Sie vom Anbieter unter folgendem Link:\nhttps://www.dataprivacyframework.gov/s/participant-search/participantdetail?\ncontact=true&id=a2zt000000001L5AAI&status=Active\nIP Anonymisierung\nDie Google Analytics IP-Anonymisierung ist aktiviert. Dadurch wird Ihre IP-Adresse von Google innerhalb\nvon Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den\nEuropäischen Wirtschaftsraum vor der Übermittlung in die USA gekürzt. Nur in Ausnahmefällen wird die\nvolle IP-Adresse an einen Server von Google in den USA übertragen und dort gekürzt. Im Auftrag des\nBetreibers dieser Website wird Google diese Informationen benutzen, um Ihre Nutzung der Website\nauszuwerten, um Reports über die Websiteaktivitäten zusammenzustellen und um weitere mit der\nWebsitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber dem Websitebetreiber\nzu erbringen. Die im Rahmen von Google Analytics von Ihrem Browser übermittelte IP-Adresse wird nicht\nmit anderen Daten von Google zusammengeführt.\nBrowser Plugin\nSie können die Erfassung und Verarbeitung Ihrer Daten durch Google verhindern, indem Sie das unter dem\nfolgenden Link verfügbare Browser-Plugin herunterladen und installieren:\nhttps://tools.google.com/dlpage/gaoptout?hl=de.\nMehr Informationen zum Umgang mit Nutzerdaten bei Google Analytics finden Sie in der\nDatenschutzerklärung von Google:\nhttps://support.google.com/analytics/answer/6004245?hl=de.\n6. Plugins und Tools\nChatGPT\nWir nutzen ChatGPT für unsere Kundenkommunikation. Anbieter ist die OpenAI, 3180 18th St, San\nFrancisco, CA 94110, USA,\nhttps://openai.com. Wir nutzen ChatGPT für folgende Tools:\nChatbot\nCRM-System\nWenn Sie über unsere Website ein Gespräch mit uns beginnen und ChatGPT aktiviert wird, werden Ihre\nEingaben inklusive Metadaten an die Server von ChatGPT übertragen und dort verarbeitet, um eine\npassende Antwort zu generieren.\nOpenAI behält sich das Recht vor, die in ChatGPT getätigten Eingaben zum Trainieren des eigenen\nAlgorithmus weiterzuverarbeiten. Wir können nicht beurteilen, in welcher Weise die Daten genau\nverarbeitet werden.\nDie Verwendung von ChatGPT erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Der Websitebetreiber\n13 / 17\nhat ein berechtigtes Interesse an einer möglichst effizienten Kundenkommunikation unter Einsatz moderner\ntechnischer Lösungen. Sofern eine entsprechende Einwilligung abgefragt wurde, erfolgt die Verarbeitung\nausschließlich auf Grundlage von Art. 6 Abs. 1 lit. a DSGVO und § 25 Abs. 1 TTDSG. Die Einwilligung ist\njederzeit widerrufbar.\nWeitere Informationen erhalten Sie hier:\nhttps://openai.com/policies/privacy-policy.\nAuftragsverarbeitung\nWir haben einen Vertrag über Auftragsverarbeitung (AVV) zur Nutzung des oben genannten Dienstes\ngeschlossen. Hierbei handelt es sich um einen datenschutzrechtlich vorgeschriebenen Vertrag, der\ngewährleistet, dass dieser die personenbezogenen Daten unserer Websitebesucher nur nach unseren\nWeisungen und unter Einhaltung der DSGVO verarbeitet.\n7. eCommerce und Zahlungsanbieter\nVerarbeiten von Kunden- und Vertragsdaten\nWir erheben, verarbeiten und nutzen personenbezogene Kunden- und Vertragsdaten zur Begründung,\ninhaltlichen Ausgestaltung und Änderung unserer Vertragsbeziehungen. Personenbezogene Daten über die\nInanspruchnahme dieser Website (Nutzungsdaten) erheben, verarbeiten und nutzen wir nur, soweit dies\nerforderlich ist, um dem Nutzer die Inanspruchnahme des Dienstes zu ermöglichen oder abzurechnen.\nRechtsgrundlage hierfür ist Art. 6 Abs. 1 lit. b DSGVO.\nDie erhobenen Kundendaten werden nach Abschluss des Auftrags oder Beendigung der\nGeschäftsbeziehung und Ablauf der ggf. bestehenden gesetzlichen Aufbewahrungsfristen gelöscht.\nGesetzliche Aufbewahrungsfristen bleiben unberührt.\nDatenübermittlung bei Vertragsschluss für Dienstleistungen und digitale Inhalte\nWir übermitteln personenbezogene Daten an Dritte nur dann, wenn dies im Rahmen der\nVertragsabwicklung notwendig ist, etwa an das mit der Zahlungsabwicklung beauftragte Kreditinstitut.\nEine weitergehende Übermittlung der Daten erfolgt nicht bzw. nur dann, wenn Sie der Übermittlung\nausdrücklich zugestimmt haben. Eine Weitergabe Ihrer Daten an Dritte ohne ausdrückliche Einwilligung,\netwa zu Zwecken der Werbung, erfolgt nicht.\nGrundlage für die Datenverarbeitung ist Art. 6 Abs. 1 lit. b DSGVO, der die Verarbeitung von Daten zur\nErfüllung eines Vertrags oder vorvertraglicher Maßnahmen gestattet.\nZahlungsdienste\nWir binden Zahlungsdienste von Drittunternehmen auf unserer Website ein. Wenn Sie einen Kauf bei uns\ntätigen, werden Ihre Zahlungsdaten (z. B. Name, Zahlungssumme, Kontoverbindung, Kreditkartennummer)\nvom Zahlungsdienstleister zum Zwecke der Zahlungsabwicklung verarbeitet. Für diese Transaktionen\ngelten die jeweiligen Vertrags- und Datenschutzbestimmungen der jeweiligen Anbieter. Der Einsatz der\nZahlungsdienstleister erfolgt auf Grundlage von Art. 6 Abs. 1 lit. b DSGVO (Vertragsabwicklung) sowie im\nInteresse eines möglichst reibungslosen, komfortablen und sicheren Zahlungsvorgangs (Art. 6 Abs. 1 lit. f\nDSGVO). Soweit für bestimmte Handlungen Ihre Einwilligung abgefragt wird, ist Art. 6 Abs. 1 lit. a DSGVO\nRechtsgrundlage der Datenverarbeitung; Einwilligungen sind jederzeit für die Zukunft widerrufbar.\nFolgende Zahlungsdienste / Zahlungsdienstleister setzen wir im Rahmen dieser Website ein:\n14 / 17\nPayPal\nAnbieter dieses Zahlungsdienstes ist PayPal (Europe) S.à.r.l. et Cie, S.C.A., 22-24 Boulevard Royal, L-2449\nLuxembourg (im Folgenden „PayPal“).\nDie Datenübertragung in die USA wird auf die Standardvertragsklauseln der EU-Kommission gestützt.\nDetails finden Sie hier:\nhttps://www.paypal.com/de/webapps/mpp/ua/pocpsa-full.\nDetails entnehmen Sie der Datenschutzerklärung von PayPal:\nhttps://www.paypal.com/de/webapps/mpp/ua/privacy-full.\nKlarna\nAnbieter ist die Klarna AB, Sveavägen 46, 111 34 Stockholm, Schweden (im Folgenden „Klarna“). Klarna\nbietet verschiedene Zahlungsoptionen an (z. B. Ratenkauf). Wenn Sie sich für die Bezahlung mit Klarna\nentscheiden (Klarna-Checkout-Lösung), wird Klarna verschiedene personenbezogene Daten von Ihnen\nerheben. Klarna nutzt Cookies, um die Verwendung der Klarna-Checkout-Lösung zu optimieren. Details zum\nEinsatz von Klarna-Cookies entnehmen Sie folgendem Link:\nhttps://cdn.klarna.com/1.0/shared/content/policy/cookie/de_de/checkout.pdf.\nDetails hierzu können Sie in der Datenschutzerklärung von Klarna unter folgendem Link nachlesen:\nhttps://www.klarna.com/de/datenschutz/.\nSofortüberweisung\nAnbieter dieses Zahlungsdienstes ist die Sofort GmbH, Theresienhöhe 12, 80339 München (im Folgenden\n„Sofort GmbH“). Mit Hilfe des Verfahrens „Sofortüberweisung“ erhalten wir in Echtzeit eine\nZahlungsbestätigung von der Sofort GmbH und können unverzüglich mit der Erfüllung unserer\nVerbindlichkeiten beginnen. Wenn Sie sich für die Zahlungsart „Sofortüberweisung“ entschieden haben,\nübermitteln Sie die PIN und eine gültige TAN an die Sofort GmbH, mit der diese sich in Ihr Online-Banking-\nKonto einloggen kann. Sofort GmbH überprüft nach dem Einloggen automatisch Ihren Kontostand und führt\ndie Überweisung an uns mit Hilfe der von Ihnen übermittelten TAN durch. Anschließend übermittelt sie uns\nunverzüglich eine Transaktionsbestätigung. Nach dem Einloggen werden außerdem Ihre Umsätze, der\nKreditrahmen des Dispokredits und das Vorhandensein anderer Konten sowie deren Bestände\nautomatisiert geprüft. Neben der PIN und der TAN werden auch die von Ihnen eingegebenen Zahlungsdaten\nsowie Daten zu Ihrer Person an die Sofort GmbH übermittelt. Bei den Daten zu Ihrer Person handelt es sich\num Vor- und Nachnamen, Adresse, Telefonnummer(n), E-Mail-Adresse, IP-Adresse und ggf. weitere zur\nZahlungsabwicklung erforderliche Daten. Die Übermittlung dieser Daten ist notwendig, um Ihre Identität\nzweifelsfrei zu festzustellen und Betrugsversuchen vorzubeugen. Details zur Zahlung mit\nSofortüberweisung entnehmen Sie folgenden Links:\nhttps://www.sofort.de/datenschutz.html und\nhttps://www.klarna.com/sofort/.\nMastercard\nAnbieter dieses Zahlungsdienstes ist die Mastercard Europe SA, Chaussée de Tervuren 198A, B-1410\nWaterloo, Belgien (im Folgenden „Mastercard“).\nMastercard kann Daten an seine Muttergesellschaft in die USA übermitteln. Die Datenübertragung in die\nUSA wird auf die Binding Corporate Rules von Mastercard gestützt. Details finden Sie hier:\nhttps://www.mastercard.de/de-de/datenschutz.html und\nhttps://www.mastercard.us/content/dam/mccom/global/documents/mastercard-bcrs.pdf.\nVISA\n15 / 17\nAnbieter dieses Zahlungsdienstes ist die Visa Europe Services Inc., Zweigniederlassung London, 1 Sheldon\nSquare, London W2 6TT, Großbritannien (im Folgenden „VISA“).\nGroßbritannien gilt als datenschutzrechtlich sicherer Drittstaat. Das bedeutet, dass Großbritannien ein\nDatenschutzniveau aufweist, das dem Datenschutzniveau in der Europäischen Union entspricht.\nVISA kann Daten an seine Muttergesellschaft in die USA übertragen. Die Datenübertragung in die USA wird\nauf die Standardvertragsklauseln der EU-Kommission gestützt. Details finden Sie hier:\nhttps://www.visa.de/nutzungsbedingungen/visa-globale-datenschutzmitteilung/mitteilung-zuzustandigkeitsfragen-\nfur-den-ewr.html.\nWeitere Informationen entnehmen Sie der Datenschutzerklärung von VISA:\nhttps://www.visa.de/nutzungsbedingungen/visa-privacy-center.html.\n16',
      'en':
          '1. Introduction\n\nWe are pleased that you are interested in our platform. The protection of your personal data is important to us. This privacy policy informs you about how we collect, process and use your data in our web and mobile app.\n\n2. Responsible body\n\nThe person responsible for data processing on this website and in the app is:\n\n[Name of the company]\n[Address of the company]\n[Postal code, city]\nE-mail: [E-mail address]\n\n3. Collection and processing\n\nof personal data\n\nWe only collect and process personal data if you provide it to us voluntarily, e.g. as part of a registration, by filling out forms or sending emails.\n\nExamples of data collected:\n\nName, email address and contact information\n\nIP address and usage data\n\nLocation data (when using the mobile app, if you have consented)\n\n4. Purpose of data processing\n\nThe data collected is used for the following purposes:\n\nProvision and improvement of our services\n\nPersonalization of the user experience\n\nProcessing payments (for subscriptions or premium services)\n\nCommunication with users (e.g. for support requests)\n\nSecurity and error analysis\n\n5. Legal basis for data processing\n\nYour data is processed on the basis of the following legal bases in accordance with the GDPR:\n\nArt. 6 Para. 1 lit. a GDPR: Consent of the user\n\nArt. 6 Para. 1 lit. b GDPR: Fulfillment of a contract\n\nArt. 6 Para. 1 lit. f GDPR: Protection of legitimate interests (e.g. to improve our offer)\n\n6. Transfer of data to third parties\n\nWe only pass on your data to third parties if:\n\nYou have expressly consented have,\nthis is necessary to process the contract (e.g. payment providers),\nwe are legally obliged to do so, or\nit is necessary to enforce our rights.\n\n7. Data transfer to third countries\n\nData will only be transferred to countries outside the European Union if this is necessary to fulfill the contract or if you have given us your express consent.\n\n8. Storage period\n\nYour personal\ndata will only be stored for as long as it is necessary for the purposes for which it was processed, or as long as we are legally obliged to do so.\n\n9. Your rights\n\nYou have the right:\n\nTo receive information about your stored data (Art. 15 GDPR),\nTo request correction of incorrect data (Art. 16 GDPR),\nTo request deletion of your data (Art. 17 GDPR),\nTo request restriction of data processing (Art. 18 GDPR),\nTo object to data processing (Art. 21 GDPR),\nTo receive your data in a common, machine-readable format (Art. 20 GDPR).\nTo exercise these rights, please contact: [company email address]\n\n10. Data security\n\nWe take appropriate technical and organizational measures to protect your data from loss, misuse and unauthorized access. Our security measures are regularly improved.\n\n11. Use of cookies\n\nOur web and mobile app use cookies to make it easier to use and to offer certain functions. You can deactivate the use of cookies in the settings of your browser or device. However, this may result in some functions not being available.\n\n12. Changes to the data protection provisions\n\nWe reserve the right to change these data protection provisions at any time in order to adapt them to legal requirements or changes to our offering. You can always find the current version on our website and in the mobile app.\n\n13. Contact\n\nIf you have any questions about data protection, please contact:\n\n[Company name]\n\nEmail: [Email address]',
    },
    'ns0nki37': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'jv7fm5mf': {
      'de': 'Chats',
      'en': 'chats',
    },
    'nitpmh9n': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'wg36z8aj': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'ys1wbdfy': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'y9ixz8t5': {
      'de': 'Profil',
      'en': 'profile',
    },
    'c39fbr5k': {
      'de': 'Login',
      'en': 'Login',
    },
    'dzxj1hd8': {
      'de': 'Logout',
      'en': 'logout',
    },
    'ypkezf3x': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // Impressum
  {
    'h89mh4w1': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    '4td4vsfh': {
      'de': 'Chats',
      'en': 'chats',
    },
    'gdmiirpn': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    'qqerr9jz': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'nodvtnmj': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    '1nhop96f': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'sdczjbvh': {
      'de': 'Login',
      'en': 'Login',
    },
    'e11qxsny': {
      'de': 'Impressum',
      'en': 'imprint',
    },
    'pkqyy9lh': {
      'de':
          'Angaben gemäß § 5 TMG:\n\nCapepointtrading 38 PTY (LTD)\nIl Paladino Alphen Close 2\nWestern Cape\n7140 Strand\n\nVertreten durch:\nGertrude Piringer\n\nKontakt:\nTelefon: +43 (0) 720 1270109\nE-Mail: office@rasondo.com\n\nHandelsregister: 2011/143503/07\nRegistergericht: Cape Town, Western Cape\n\nUmsatzsteuer-ID: \nUmsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz:\n4191255614\n\nVerantwortlich für den Inhalt nach § 55 Abs. 2 RStV:\nCapepointtrading 38 (PTY) LTD\n\nEU-Streitschlichtung\n\nDie Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit:\nhttps://ec.europa.eu/consumers/odr/.\n\nUnsere E-Mail-Adresse finden Sie oben im Impressum.\nVerbraucherstreitbeilegung/Universalschlichtungsstelle\nWir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.\n\n',
      'en':
          'Information in accordance with Section 5 of the Telemedia Act:\n\nCapepointtrading 38 PTY (LTD)\n\nIl Paladino Alphen Close 2\n\nWestern Cape\n\n7140 Strand\n\nRepresented by:\nGertrude Piringer\n\nContact:\nTelephone: +43 (0) 720 1270109\nE-mail: office@rasondo.com\n\nCommercial register: 2011/143503/07\nRegistration court: Cape Town, Western Cape\n\nVAT ID: \nVAT identification number in accordance with Section 27 a of the Sales Tax Law:\n\n4191255614\n\nResponsible for the content in accordance with Section 55 Paragraph 2 of the RStV:\n\nCapepointtrading 38 (PTY) LTD\n\nEU dispute resolution\n\nThe European Commission provides a platform for online dispute resolution (OS) ready:\nhttps://ec.europa.eu/consumers/odr/.\n\nYou can find our email address above in the imprint.\nConsumer dispute resolution/universal arbitration board\nWe are not willing or obliged to participate in dispute resolution proceedings before a consumer arbitration board.',
    },
    'pr0wdwl3': {
      'de':
          'Impressum\n\nAngaben gemäß § 5 TMG:\n\n[Name des Unternehmens]\n[Adresse des Unternehmens]\n[PLZ Ort]\n\nVertreten durch:\n[Name des Geschäftsführers / Inhabers]\n\nKontakt:\nTelefon: [Telefonnummer]\nE-Mail: [E-Mail-Adresse]\nWebsite: [URL der Website]\n\nRegistereintrag:\nEintragung im Handelsregister.\nRegistergericht: [Name des Amtsgerichts]\nRegisternummer: [Handelsregisternummer]\n\nUmsatzsteuer-ID:\nUmsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: [USt-IdNr.]\n\nVerantwortlich für den Inhalt nach § 55 Abs. 2 RStV:\n[Name]\n[Adresse]',
      'en':
          'Imprint\n\nInformation in accordance with Section 5 of the Telemedia Act:\n\n[Name of the company]\n[Address of the company]\n[Postal code]\n\nRepresented by:\n[Name of the managing director / owner]\n\nContact:\nTelephone: [Telephone number]\nEmail: [Email address]\nWebsite: [URL of the website]\n\nRegistration entry:\nEntry in the commercial register.\nRegistration court: [Name of the local court]\nRegistration number: [Commercial register number]\n\nVAT ID:\nVAT identification number in accordance with Section 27a of the Sales Tax Law: [VAT ID number]\n\nResponsible for the content in accordance with Section 55 Paragraph 2 of the RStV:\n[Name]\n[Address]',
    },
    '15xhzjci': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'ngzyksy6': {
      'de': 'Chats',
      'en': 'chats',
    },
    'ni1gku0h': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'ztq6sd54': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'bzs695ka': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'hcpmtm6w': {
      'de': 'Profil',
      'en': 'profile',
    },
    'ld4l2jsm': {
      'de': 'Login',
      'en': 'Login',
    },
    'cbxtidnd': {
      'de': 'Logout',
      'en': 'logout',
    },
    'pmfiv3nj': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // auth_2_Create
  {
    'fy0qts70': {
      'de': 'Kostenlos registrieren',
      'en': 'Register for free',
    },
    'cd1yosg1': {
      'de': 'Erstelle dein Profil und starte dein AI-Erlebnis!',
      'en': 'Create your profile and start your AI experience!',
    },
    'wwd4vp57': {
      'de': 'Name',
      'en': 'name',
    },
    'y4ibrkcy': {
      'de': 'Name',
      'en': 'name',
    },
    '3fqwnjh3': {
      'de': 'Email',
      'en': 'E-mail',
    },
    '5ugveqb6': {
      'de': 'E-mail',
      'en': 'E-mail',
    },
    'f4tjmxx1': {
      'de': 'Password',
      'en': 'Password',
    },
    'pgjlf7ks': {
      'de': 'Password',
      'en': 'Password',
    },
    'cx7u0lr7': {
      'de': 'Password',
      'en': 'Password',
    },
    'l9efj15x': {
      'de': 'Password bestätigen',
      'en': 'Confirm password',
    },
    '0ia8md1b': {
      'de': 'Absenden',
      'en': 'Submit',
    },
    '2u7g0w6v': {
      'de': 'Oder anmelden mit',
      'en': 'Or log in with',
    },
    's6kisexe': {
      'de': 'Continue with Google',
      'en': 'Continue with Google',
    },
    '9pv815t7': {
      'de': 'Schon registriert? ',
      'en': 'Already registered?',
    },
    '8aledxwm': {
      'de': 'Jetzt einloggen',
      'en': 'Log in now',
    },
    '8kev2thy': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // auth_2_Login
  {
    'ao4u79wu': {
      'de': 'Willkommen zurück',
      'en': 'Welcome back',
    },
    'jvzib8lp': {
      'de':
          'Bitte geben Sie die Informationen unten ein, um sich in Ihr Konto einzuloggen.',
      'en': 'Please enter the information below to log into your account.',
    },
    'sf73e4pd': {
      'de': 'Email',
      'en': 'E-mail',
    },
    '34o2cv1f': {
      'de': 'Password',
      'en': 'Password',
    },
    '73in4hml': {
      'de': 'Login',
      'en': 'Login',
    },
    '87pns730': {
      'de': 'Oder einloggen mit',
      'en': 'Or log in with',
    },
    'y9rmpn87': {
      'de': 'Continue with Google',
      'en': 'Continue with Google',
    },
    'o0e9vdkw': {
      'de': 'Noch kein Konto?  ',
      'en': 'No account yet?',
    },
    '6hk2b7c4': {
      'de': 'Jetzt erstellen',
      'en': 'Create now',
    },
    'lsjmju2h': {
      'de': 'Passwort vergessen?',
      'en': 'Forgot your password?',
    },
    '38er2l6v': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // auth_2_ForgotPassword
  {
    'clgtzgxh': {
      'de': 'Passwort vergessen',
      'en': 'Forgot password',
    },
    '1bz1rop6': {
      'de':
          'E-Mail-Adresse unten eintragen, um einen Link zur Passwortänderung zu erhalten',
      'en':
          'Enter your email address below to receive a link to change your password',
    },
    'epl1akyo': {
      'de': 'Email',
      'en': 'E-mail',
    },
    'klxhcnel': {
      'de': 'Passwort Link anfordern',
      'en': 'Request password link',
    },
    'ioctyffr': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // ImageToImage
  {
    'q8r2svz3': {
      'de': 'Erstelle neue Bilder von   ',
      'en': 'Create new images of',
    },
    'lmqte93g': {
      'de': 'Erstelle neue Bilder von',
      'en': 'Create new images of',
    },
    'muxv0e42': {
      'de': 'Passe das Aussehen an:',
      'en': 'Customize the look:',
    },
    'evfv6ndj': {
      'de':
          'In einem eleganten Nachthemd, den Kopf leicht geneigt und einem sanften Lächeln',
      'en':
          'In an elegant nightgown, her head slightly tilted and a gentle smile',
    },
    'mp3yhsf6': {
      'de': 'Passe die Umgebung an:',
      'en': 'Adjust the environment:',
    },
    'qwxythkn': {
      'de':
          'In einem modernen Café, bei Sonnenuntergang, mit warmem Licht und gemütlicher Atmosphäre',
      'en': 'In a modern cafe, at sunset, with warm light and cozy atmosphere',
    },
    'oegqxyqj': {
      'de': 'jetzt erstellen',
      'en': 'create now',
    },
    'j0dc3349': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // chatPagePro
  {
    'i6zmahrb': {
      'de': 'Schreibe mir...',
      'en': 'Write me...',
    },
    't7gv7g9b': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // auth_2_profil
  {
    '9b4mwv1n': {
      'de': 'Profil',
      'en': 'profile',
    },
    'zecwudj0': {
      'de': 'Bild hochladen',
      'en': 'Upload image',
    },
    '59y5jf9m': {
      'de': 'Ändern',
      'en': 'Change',
    },
    '2a9rtt3i': {
      'de': 'Entdecken',
      'en': 'Discover',
    },
    'hgr2wjrq': {
      'de': 'Premium freischalten',
      'en': 'Unlock Premium',
    },
    'sexk06iu': {
      'de': 'Premium Abo kündigen',
      'en': 'Cancel Premium Subscription',
    },
    'yxtswbgq': {
      'de': 'Sprache',
      'en': 'Language',
    },
    'esb1onko': {
      'de': 'Log out',
      'en': 'Log out',
    },
    'f2jq88dr': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // AGB
  {
    'gq57c57i': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'qr4r4kl8': {
      'de': 'Chats',
      'en': 'chats',
    },
    'kuhd4kr6': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    '8xr0efp0': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'nok13lwu': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'rn488d5t': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'dxmcv2wq': {
      'de': 'Login',
      'en': 'Login',
    },
    'oxvlap1h': {
      'de': 'AGB',
      'en': 'Terms and Conditions',
    },
    'yo0yigca': {
      'de':
          'ALLGEMEINE GESCHÄFTSBEDINGUNGEN \nDiese Allgemeinen Geschäftsbedingungen („Vereinbarung“) legen die rechtsverbindlichen Bedingungen für Ihre Nutzung der Website Rasondo.com („Website“) fest, die Eigentum von Capepoint Trading 38 PTY LTD ist und von dieser betrieben wird. \nDurch den Zugriff auf oder die Nutzung unserer Website erklären Sie sich mit dieser Vereinbarung einverstanden. Wenn Sie dieser Vereinbarung nicht zustimmen, dürfen Sie nicht auf unsere Website zugreifen oder sie nutzen. \n\nINHALT AUF DER WEBSITE \nDer Inhalt dieser Website wird mithilfe unserer Technologie durch künstliche Intelligenz generiert. Wir können nicht garantieren, dass die generierten Inhalte Ihren Vorlieben oder Wünschen entsprechen, geben aber das Versprechen an jeder Weiterentwicklung der Technologie unsere Kunden teilhaben zu lassen. Es ist wichtig zu beachten, dass alle auf dieser Website generierten Inhalte rein fiktiv sind und nicht dazu gedacht sind, reale Personen, ob lebend oder verstorben, darzustellen. Etwaige Ähnlichkeiten mit realen Personen oder Ereignissen sind rein zufällig. \nWir setzen uns dafür ein, dass KI-generierte Inhalte auf unserer Plattform in keiner Weise Minderjährigen ähneln oder deren Ähnlichkeit ausnutzen. Alle KI-generierten Inhalte, die Minderjährigen ähneln, werden umgehend überprüft und entfernt. Bitte beachten Sie, dass unsere Bilderzeugungs- und KI-Chat-Funktionen zwar darauf abzielen, ein außergewöhnliches Erlebnis zu bieten, es jedoch Fälle geben kann, in denen die Ergebnisse nicht Ihren Erwartungen entsprechen. Wie jede neue Technologie entwickeln sich auch die Systeme der künstlichen Intelligenz und des maschinellen Lernens kontinuierlich weiter und es werden täglich Verbesserungen vorgenommen. Bei der Registrierung bei Rasondo.com stimmen Benutzer den Einschränkungen des Systems zu und erkennen an, dass die Ergebnisse des Chats und der Bildgenerierung (einschließlich Sprachnachrichten und Videogenerierung, falls integriert) gelegentlich unzureichend sein können. Wir bedanken uns für Ihr Verständnis, da wir unermüdlich daran arbeiten, unsere Plattform zu verbessern und zu verfeinern, um unseren Benutzern das bestmögliche Erlebnis zu bieten. \nEIGENTUMSRECHTE Die Website und alle auf der Website verfügbaren Inhalte und Materialien, einschließlich, aber nicht beschränkt auf Texte, Grafiken, Logos, Symbole, Bilder, Audioclips, Videoclips, Datenzusammenstellungen und Software, sind Eigentum von Rasondo.com oder seinen Lizenzgebern und sind durch geschützt Urheberrechtsgesetze\nOhne unsere vorherige schriftliche Zustimmung dürfen Sie keinen Teil der Website oder ihres Inhalts kopieren, ändern, verteilen, anzeigen, übertragen, reproduzieren oder abgeleitete Werke davon erstellen. Es ist Ihnen nicht gestattet, den Quellcode oder die zugrunde liegenden Komponenten von Modellen, Algorithmen und Systemen der von der Website bereitgestellten Dienste zurück zu assemblieren, , zu dekompilieren, zu übersetzen oder auf andere Weise zu versuchen, sie zu entdecken. ZAHLUNG UND RECHNUNG Rasondo.com bietet kostenpflichtige Pläne an, die es Benutzern möglicherweise ermöglichen, mehr Inhalte zu generieren und mehr Nachrichten an ihre virtuelle Freundin zu senden, oder den Benutzern basierend auf dem Plan, für den sie sich entschieden haben, andere Optionen zu bieten. \nDurch das Abonnieren eines kostenpflichtigen Plans\nerklären Sie sich damit einverstanden, alle anfallenden Gebühren und Entgelte, einschließlich aller anfallenden Steuern, zu zahlen. Rasondo.com kann seine Preis- und Abrechnungsrichtlinien jederzeit aktualisieren. Durch die weitere Nutzung der Website nach solchen Änderungen stimmen Sie den aktualisierten Preis- und Abrechnungsrichtlinien zu. \nRasondo.com sendet Ihnen möglicherweise E-Mails zu seinen neuen Preis- und Abrechnungsrichtlinien, die ausschließlich zu dem Zweck dienen, Sie darüber zu informieren. Rückerstattungen Bitte beachten Sie, dass der Verkauf endgültig ist und wir keine Rückerstattung leisten, wenn Sie ein Abonnement über den Apple iTunes Store oder unsere iPhone-Anwendung erwerben. Ihr Kauf unterliegt den geltenden Zahlungsrichtlinien von Apple, die möglicherweise auch keine Rückerstattungen vorsehen. \nWenn Sie ein Abonnement über den Google Play Store erwerben, ist der Verkauf endgültig und wir leisten keine Rückerstattung. Ihr Kauf unterliegt den geltenden Zahlungsrichtlinien von Google, die möglicherweise auch keine Rückerstattungen vorsehen. Wenn Sie ein Abonnement über unsere Website erwerben (über Stripe, PayPal oder einen anderen Zahlungsabwickler), ist der Verkauf endgültig und wir leisten keine Rückerstattung.\n Bitte beachten Sie, dass die Rückerstattungsrichtlinie für EU-Bürger innerhalb von 14 Tagen nach dem Kauf nicht für den bereitgestellten Zugang zum digitalen Produkt gilt. Geräteanforderungen Um Rasondo.com über Ihr Smartphone oder ein anderes Gerät genießen zu können, muss Ihr Gerät bestimmte Systemanforderungen erfüllen. Diese Anforderungen finden Sie auf der Website sowie auf den App-Marktplätzen von Google und Apple. 3.1. Stornierung durch Sie Sie können Ihre Mitgliedschaft jederzeit kündigen, indem Sie Ihr Konto löschen. Diese Aktion ist irreversibel. Sobald Sie Ihr Konto löschen, werden alle mit Ihrer Nutzung der Dienste verbundenen Daten dauerhaft gelöscht. Nach der Löschung Ihres Kontos wird die Kündigung eines kostenpflichtigen Abonnements am Ende des entsprechenden Abrechnungszeitraums wirksam.\n Bitte beachten Sie, dass Sie beim Kauf eines kostenpflichtigen Abonnements über den Apple iTunes Store oder unsere iPhone-Anwendung Ihr Abonnement kündigen können, indem Sie die automatische Verlängerung kostenpflichtiger In-App-Abonnements kündigen, indem Sie in Ihren iTunes-Kontoeinstellungen „App-Abonnements verwalten“ auswählen und das gewünschte Abonnement auswählen ändern. Wenn Sie ein kostenpflichtiges Abonnement über den Google Play Store erwerben, können Sie automatische Verlängerungen in den Kontoeinstellungen unter „Abonnements“ in der Google Play-App oder gemäß dem aktuellen von Google Play beschriebenen Verfahren kündigen. Stornierung durch uns Wir können Ihre Nutzung der Dienste aufgrund Ihres Betrugs oder Verstoßes gegen eine Verpflichtung gemäß diesen Bedingungen aussetzen oder beenden. Eine solche Kündigung oder Aussetzung kann sofort und ohne Vorankündigung erfolgen. Kommerzielle Benutzung Der Dienst ist nur für Ihren persönlichen Gebrauch bestimmt. Sofern hierin oder in den Diensten nicht ausdrücklich etwas anderes gestattet ist, erklären Sie sich damit\neinverstanden, die Inhalte nicht für kommerzielle Zwecke anzuzeigen, zu verteilen, zu lizenzieren, auszuführen, zu veröffentlichen, zu reproduzieren, zu duplizieren, zu kopieren, abgeleitete Werke daraus zu erstellen, zu modifizieren, zu verkaufen, weiterzuverkaufen, zu verwerten, zu übertragen oder hochzuladen , jeglicher Teil der Dienste, die Nutzung der Dienste oder der Zugriff auf die Dienste. \n\nALLGEMEINE VERFAHREN ZUR VERWENDUNG UND LAGERUNG\n Sie erkennen an, dass wir allgemeine Praktiken und Beschränkungen für die Nutzung der Dienste festlegen können, einschließlich, aber nicht beschränkt auf den maximalen Zeitraum, für den Daten oder andere Inhalte von den Diensten gespeichert werden, und den maximalen Speicherplatz, der in Ihrem Namen auf unseren Servern zugewiesen wird . Sie stimmen zu, dass Replika keine Verantwortung oder Haftung für die Löschung oder Nichtspeicherung von Daten oder anderen Inhalten übernimmt, die von den Diensten gepflegt oder hochgeladen werden. Sie erkennen an, dass wir uns das Recht vorbehalten, Konten zu kündigen, die über einen längeren Zeitraum inaktiv sind. Sie erkennen weiterhin an, dass wir uns das Recht vorbehalten, diese allgemeinen Praktiken und Beschränkungen jederzeit nach eigenem Ermessen, mit oder ohne Vorankündigung, zu ändern. \n\nGEWÄHRLEISTUNGSAUSSCHLUSS UND HAFTUNGSBESCHRÄNKUNG \n\nRasondo.com übernimmt keine Zusicherungen oder Garantien dafür, dass die Website Ihren Anforderungen entspricht, ununterbrochen, sicher oder fehlerfrei verfügbar ist oder frei von Viren oder anderen schädlichen Komponenten ist. Die Website wird „wie besehen“ und „wie verfügbar“ ohne jegliche Gewährleistungen jeglicher Art bereitgestellt. In keinem Fall haftet Rasondo.com Ihnen oder Dritten gegenüber für direkte, indirekte, zufällige, besondere oder Folgeschäden, die sich aus oder im Zusammenhang mit Ihrer Nutzung der Website ergeben, einschließlich, aber nicht beschränkt auf, entgangenen Gewinn und verlorene Daten oder Betriebsunterbrechung. Die von der Website bereitgestellten Ausgaben des Chatbots werden nicht von Menschen generiert und durch die Nutzung der Website erkennen Sie an, dass die Antworten, die Sie erhalten, nicht von Menschen, sondern nur von Software generiert werden und Rasondo.com sie nicht kontrollieren kann. Die Ausgabe, die Sie erhalten, hängt von den von Ihnen bereitgestellten Triggern ab. Möglicherweise empfinden Sie die Ausgabe als beleidigend, unanständig oder anstößig und Sie stimmen zu, dass Rasondo.com unter keinen Umständen für Verluste oder Schäden jeglicher Art haftbar gemacht wird, die durch Ihre Nutzung von Inhalten entstehen. Rasondo.com bietet keine Gesundheitsfürsorge, psychiatrische, medizinische Betreuung oder andere professionelle Dienstleistungen im Bereich Medizin oder Therapie an. Wenn Sie mit psychischen Problemen zu kämpfen haben, sollten Sie einen Arzt, Therapeuten oder einen anderen Spezialisten aufsuchen und sich professionell beraten lassen. Rasondo.com übernimmt keine Verantwortung, wenn ein Nutzer feststellt, dass sein geistiges oder körperliches Wohlbefinden beeinträchtigt ist, nachdem er mit der Nutzung der Website begonnen hat. Rasondo.com haftet nicht für psychische Störungen, Suizidtendenzen oder sonstige Gesundheitsschäden, bei denen der Nutzer professionelle Hilfe in Anspruch nehmen sollte. Gerichtsstand und anwendbares Recht Gerichtsstand für alle Streitigkeiten aus diesem Vertrag ist Kapstadt.\n1. Es gilt Südafrikanisches Recht\n',
      'en':
          'TERMS AND CONDITIONS \nThese Terms and Conditions (\"Agreement\") set out the legally binding terms and conditions of your use of the Rasondo.com website (\"Website\") owned and operated by Capepoint Trading 38 PTY LTD. \nBy accessing or using our Website, you agree to this Agreement. If you do not agree to this Agreement, you must not access or use our Website. \n\nCONTENT ON THE WEBSITE \nThe content on this Website is generated using our artificial intelligence technology. We cannot guarantee that the content generated will meet your preferences or desires, but promise to share any advancements in technology with our customers. It is important to note that all content generated on this Website is purely fictional and is not intended to represent any real person, living or deceased. Any resemblance to real persons or events is purely coincidental.\nWe are committed to ensuring that AI-generated content on our platform does not resemble or exploit the likeness of minors in any way. Any AI-generated content resembling minors will be promptly reviewed and removed. Please note that while our image generation and AI chat features aim to provide an exceptional experience, there may be instances where the results do not meet your expectations. Like any new technology, artificial intelligence and machine learning systems are continually evolving and improvements are being made daily. By registering with Rasondo.com, users agree to the limitations of the system and acknowledge that chat and image generation (including voice messages and video generation, if integrated) results may occasionally be inadequate. We appreciate your understanding as we work tirelessly to improve and refine our platform to provide the best possible experience for our users.\nOWNERSHIP RIGHTS The Site and all content and materials available on the Site, including but not limited to text, graphics, logos, icons, images, audio clips, video clips, data compilations and software, are the property of Rasondo.com or its licensors and are protected by copyright laws\nYou may not copy, modify, distribute, display, transmit, reproduce or create derivative works of any part of the Site or its content without our prior written consent. You are not permitted to reverse assemble, decompile, translate or otherwise attempt to discover the source code or underlying components of models, algorithms and systems of the services provided by the Site. PAYMENT AND BILLING Rasondo.com offers paid plans that may allow users to generate more content and send more messages to their virtual girlfriend, or provide users with other options based on the plan they have opted for.\nBy subscribing to a paid plan,\nyou agree to pay all applicable fees and charges, including all applicable taxes. Rasondo.com may update its pricing and billing policies at any time. By continuing to use the Site after such changes, you agree to the updated pricing and billing policies. \nRasondo.com may send you emails about its new pricing and billing policies for the sole purpose of informing you. Refunds Please note that if you purchase a subscription through the Apple iTunes Store or our iPhone application, the sale is final and we will not provide refunds. Your purchase is subject to Apple\'s applicable payment policies, which may also not provide for refunds. \nIf you purchase a subscription through the Google Play Store, the sale is final and we will not provide refunds. Your purchase is subject to Google\'s applicable payment policies, which may also not provide for refunds. If you purchase a subscription through our Site (through Stripe, PayPal or another payment processor), the sale is final and we will not provide refunds.\nPlease note that the refund policy for EU citizens does not apply to the provided access to the digital product within 14 days of purchase. Device Requirements To enjoy Rasondo.com via your smartphone or other device, your device must meet certain system requirements. These requirements can be found on the website as well as on the Google and Apple app marketplaces. 3.1. Cancellation by You You may cancel your membership at any time by deleting your account. This action is irreversible. Once you delete your account, all data associated with your use of the Services will be permanently deleted. After deleting your account, cancellation of a paid subscription will take effect at the end of the corresponding billing period.\nPlease note that if you purchase a paid subscription through the Apple iTunes Store or our iPhone application, you may cancel your subscription by canceling the automatic renewal of paid in-app subscriptions by selecting \"Manage App Subscriptions\" in your iTunes account settings and selecting the subscription you wish to change. If you purchase a paid subscription through the Google Play Store, you may cancel automatic renewals in your account settings under \"Subscriptions\" in the Google Play app, or in accordance with the current process described by Google Play. Cancellation by Us We may suspend or terminate your use of the Services due to your fraud or breach of any obligation under these Terms. Such termination or suspension may be immediate and without notice. Commercial Use The Service is intended for your personal use only. Except as otherwise expressly permitted herein or in the Services, you agree not to display, distribute, license, perform, publish, reproduce, duplicate, copy, create derivative works from, modify, sell, resell, exploit, transmit or upload for any commercial purposes the Content, any part of the Services, use of the Services, or access to the Services.\n\nGENERAL USE AND STORAGE PRACTICES\nYou acknowledge that we may establish general practices and limits regarding use of the Services, including, but not limited to, the maximum period of time that data or other content will be retained by the Services and the maximum storage space that will be allocated on our servers on your behalf. You agree that Replika has no responsibility or liability for the deletion or failure to store any data or other content maintained or uploaded by the Services. You acknowledge that we reserve the right to terminate accounts that are inactive for an extended period of time. You further acknowledge that we reserve the right to change these general practices and limits at any time in our sole discretion, with or without notice.\n\nDISCLAIMER OF WARRANTIES AND LIMITATION OF LIABILITY\n\nRasondo.com makes no representations or warranties that the Site will meet your requirements, will be available on an uninterrupted, secure, or error-free basis, or will be free of viruses or other harmful components. The Site is provided \"as is\" and \"as available\" without any warranties of any kind. In no event will Rasondo.com be liable to you or any third party for any direct, indirect, incidental, special or consequential damages arising out of or in connection with your use of the Site, including without limitation, lost profits and lost data or business interruption. The chatbot outputs provided by the Site are not human generated and by using the Site you acknowledge that the responses you receive are not human generated but only software generated and Rasondo.com cannot control them. The output you receive will depend on the triggers you provide. You may find the output offensive, indecent or objectionable and you agree that under no circumstances will Rasondo.com be liable for any loss or damage of any kind arising from your use of any Content. Rasondo.com does not provide health care, psychiatric, medical care or other professional services in the field of medicine or therapy. If you are struggling with mental health issues, you should consult a doctor, therapist or other specialist and seek professional advice. Rasondo.com accepts no responsibility if a user finds that their mental or physical well-being is impaired after they have started using the website. Rasondo.com is not liable for mental disorders, suicidal tendencies or other health problems for which the user should seek professional help. Place of jurisdiction and applicable law The place of jurisdiction for all disputes arising from this contract is Cape Town.\n1. South African law applies',
    },
    'f85nbv7l': {
      'de':
          'Impressum\n\nAngaben gemäß § 5 TMG:\n\n[Name des Unternehmens]\n[Adresse des Unternehmens]\n[PLZ Ort]\n\nVertreten durch:\n[Name des Geschäftsführers / Inhabers]\n\nKontakt:\nTelefon: [Telefonnummer]\nE-Mail: [E-Mail-Adresse]\nWebsite: [URL der Website]\n\nRegistereintrag:\nEintragung im Handelsregister.\nRegistergericht: [Name des Amtsgerichts]\nRegisternummer: [Handelsregisternummer]\n\nUmsatzsteuer-ID:\nUmsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: [USt-IdNr.]\n\nVerantwortlich für den Inhalt nach § 55 Abs. 2 RStV:\n[Name]\n[Adresse]',
      'en':
          'Imprint\n\nInformation in accordance with Section 5 of the Telemedia Act:\n\n[Name of the company]\n[Address of the company]\n[Postal code]\n\nRepresented by:\n[Name of the managing director / owner]\n\nContact:\nTelephone: [Telephone number]\nEmail: [Email address]\nWebsite: [URL of the website]\n\nRegistration entry:\nEntry in the commercial register.\nRegistration court: [Name of the local court]\nRegistration number: [Commercial register number]\n\nVAT ID:\nVAT identification number in accordance with Section 27a of the Sales Tax Law: [VAT ID number]\n\nResponsible for the content in accordance with Section 55 Paragraph 2 of the RStV:\n[Name]\n[Address]',
    },
    'k4hl2j9u': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'jdrvxq09': {
      'de': 'Chats',
      'en': 'chats',
    },
    'qzgwo69v': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    'x39vjovu': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'hkt0lk2u': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'cst19035': {
      'de': 'Profil',
      'en': 'profile',
    },
    'o9ugwomp': {
      'de': 'Login',
      'en': 'Login',
    },
    'exk180mf': {
      'de': 'Logout',
      'en': 'logout',
    },
    'mkcl4hpw': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // VerificationPage
  {
    '07fswjsc': {
      'de': 'E-Mail verifizieren',
      'en': 'Verify email',
    },
    '2v4mnfzq': {
      'de': 'Registrierung erfolgreich',
      'en': 'Registration successful',
    },
    'lmnte0sz': {
      'de':
          'Vielen Dank für Ihre Registrierung!\n\nWir haben Ihnen eine Verifizierungs-E-Mail geschickt. Bitte öffnen Sie Ihren Posteingang und klicken Sie auf den Verifizierungslink, um Ihre Registrierung abzuschließen.',
      'en':
          'Thank you for registering!\n\nWe have sent you a verification email. Please open your inbox and click the verification link to complete your registration.',
    },
    'eh3u4p8c': {
      'de':
          'Ihre E-Mail-Adresse wurde erfolgreich verifiziert! Sie werden jetzt weitergeleitet.',
      'en':
          'Your email address has been successfully verified! You will now be redirected.',
    },
    '9kc5uqfo': {
      'de':
          'Sollten Sie keine E-Mail erhalten haben, können Sie diese erneut senden lassen.',
      'en': 'If you have not received an email, you can have it sent again.',
    },
    '8dxodi1o': {
      'de': 'E-Mail erneut senden',
      'en': 'Resend email',
    },
  },
  // AllgemeineGeschftsbedingungen
  {
    '2bwlz7lo': {
      'de': 'Character entdecken',
      'en': 'discover characters',
    },
    'oozbe1ms': {
      'de': 'Chats',
      'en': 'chats',
    },
    'vqv0tpfx': {
      'de': 'Character erstellen',
      'en': 'Create Character',
    },
    'uk2mzhtn': {
      'de': 'Message...',
      'en': 'Message...',
    },
    'r3ks9jv3': {
      'de': 'Darkmodus',
      'en': 'dark mode',
    },
    'a1xiwof9': {
      'de': 'User profil',
      'en': 'user profile',
    },
    'bzadumz6': {
      'de': 'Login',
      'en': 'Login',
    },
    '610ao53y': {
      'de': 'Allgemeine Geschäftsbedingungen ',
      'en': 'General terms and conditions of business',
    },
    'fpqqiujg': {
      'de':
          'Angaben gemäß § 5 TMG:\n\nCapepointtrading 38 PTY (LTD)\nIl Paladino Alphen Close 2\nWestern Cape\n7140 Strand\n\nVertreten durch:\nGertrude Piringer\n\nKontakt:\nTelefon: +43 (0) 720 1270109\nE-Mail: office@rasondo.com\n\nHandelsregister: 2011/143503/07\nRegistergericht: Cape Town, Western Cape\n\nUmsatzsteuer-ID: \nUmsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz:\n4191255614\n\nVerantwortlich für den Inhalt nach § 55 Abs. 2 RStV:\nCapepointtrading 38 (PTY) LTD\n\nEU-Streitschlichtung\n\nDie Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit:\nhttps://ec.europa.eu/consumers/odr/.\n\nUnsere E-Mail-Adresse finden Sie oben im Impressum.\nVerbraucherstreitbeilegung/Universalschlichtungsstelle\nWir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.\n\n',
      'en':
          'Information in accordance with Section 5 of the Telemedia Act:\n\nCapepointtrading 38 PTY (LTD)\n\nIl Paladino Alphen Close 2\n\nWestern Cape\n\n7140 Strand\n\nRepresented by:\nGertrude Piringer\n\nContact:\nTelephone: +43 (0) 720 1270109\nE-mail: office@rasondo.com\n\nCommercial register: 2011/143503/07\nRegistration court: Cape Town, Western Cape\n\nVAT ID: \nVAT identification number in accordance with Section 27 a of the Sales Tax Law:\n\n4191255614\n\nResponsible for the content in accordance with Section 55 Paragraph 2 of the RStV:\n\nCapepointtrading 38 (PTY) LTD\n\nEU dispute resolution\n\nThe European Commission provides a platform for online dispute resolution (OS) ready:\nhttps://ec.europa.eu/consumers/odr/.\n\nYou can find our email address above in the imprint.\nConsumer dispute resolution/universal arbitration board\nWe are not willing or obliged to participate in dispute resolution proceedings before a consumer arbitration board.',
    },
    '9qgtd7a8': {
      'de':
          'Impressum\n\nAngaben gemäß § 5 TMG:\n\n[Name des Unternehmens]\n[Adresse des Unternehmens]\n[PLZ Ort]\n\nVertreten durch:\n[Name des Geschäftsführers / Inhabers]\n\nKontakt:\nTelefon: [Telefonnummer]\nE-Mail: [E-Mail-Adresse]\nWebsite: [URL der Website]\n\nRegistereintrag:\nEintragung im Handelsregister.\nRegistergericht: [Name des Amtsgerichts]\nRegisternummer: [Handelsregisternummer]\n\nUmsatzsteuer-ID:\nUmsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: [USt-IdNr.]\n\nVerantwortlich für den Inhalt nach § 55 Abs. 2 RStV:\n[Name]\n[Adresse]',
      'en':
          'Imprint\n\nInformation in accordance with Section 5 of the Telemedia Act:\n\n[Name of the company]\n[Address of the company]\n[Postal code]\n\nRepresented by:\n[Name of the managing director / owner]\n\nContact:\nTelephone: [Telephone number]\nEmail: [Email address]\nWebsite: [URL of the website]\n\nRegistration entry:\nEntry in the commercial register.\nRegistration court: [Name of the local court]\nRegistration number: [Commercial register number]\n\nVAT ID:\nVAT identification number in accordance with Section 27a of the Sales Tax Law: [VAT ID number]\n\nResponsible for the content in accordance with Section 55 Paragraph 2 of the RStV:\n[Name]\n[Address]',
    },
    'qabv6fqz': {
      'de': 'Home',
      'en': 'Home',
    },
  },
  // navbar
  {
    'wtj931sx': {
      'de': 'Login',
      'en': 'Login',
    },
  },
  // editProfile_auth_2
  {
    '5f23ig9g': {
      'de': 'Adjust the content below to update your profile.',
      'en': 'Adjust the content below to update your profile.',
    },
    'c296ejc3': {
      'de': 'Change Photo',
      'en': 'Change Photo',
    },
    'ruksnfgm': {
      'de': 'Full Name',
      'en': 'Full Name',
    },
    '29ns259y': {
      'de': 'Your full name...',
      'en': 'Your full name...',
    },
    'yu4u61oq': {
      'de': 'Owner/Founder',
      'en': 'Owner/Founder',
    },
    'bd67lwky': {
      'de': 'Director',
      'en': 'Director',
    },
    'dm51thu8': {
      'de': 'Manager',
      'en': 'manager',
    },
    '7jelnw8q': {
      'de': 'Mid-Manager',
      'en': 'mid-manager',
    },
    'm52efw13': {
      'de': 'Employee',
      'en': 'Employee',
    },
    '7x26fwaz': {
      'de': 'Your Role',
      'en': 'Your Role',
    },
    'efqx3hn2': {
      'de': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'm0kqqhu2': {
      'de': 'Short Description',
      'en': 'Short Description',
    },
    'yl87rwx6': {
      'de': 'A little about you...',
      'en': 'A little about you...',
    },
  },
  // buttonPink
  {
    'p3o8plca': {
      'de': 'Kostenlos Registrieren',
      'en': 'Register for free',
    },
  },
  // sidebarMobile
  {
    '5a6tkit6': {
      'de': 'Explore',
      'en': 'Explore',
    },
    'tvgk4nn0': {
      'de': 'Chats',
      'en': 'chats',
    },
    '0ao7hbpg': {
      'de': 'Create AI',
      'en': 'Create AI',
    },
    '124jkce2': {
      'de': 'My AI',
      'en': 'My AI',
    },
    'xnrchnld': {
      'de': 'Premium',
      'en': 'Premium',
    },
    'rz717ne3': {
      'de': 'Profil',
      'en': 'profile',
    },
    '0xo0yvdh': {
      'de': 'Login',
      'en': 'Login',
    },
  },
  // buttonPinkMedium
  {
    '96b8bg4d': {
      'de': 'Jetzt AI partner erstellen!\n',
      'en': 'Create AI partner now!',
    },
  },
  // buttonPinkMediumCopy
  {
    'wdac853z': {
      'de': 'Kostenlos Registrieren',
      'en': 'Register for free',
    },
  },
  // SocialProofWithFaces
  {
    'yrphr13y': {
      'de': '4.9',
      'en': '4.9',
    },
    'f3uuj0xc': {
      'de': '2,157 reviews',
      'en': '2,157 reviews',
    },
  },
  // SocialProofAvatars
  {
    '5n5ty6ds': {
      'de': '+10000 nutzende Kunden',
      'en': '+10000 customers using it',
    },
  },
  // statementRow
  {
    'e0hb15lz': {
      'de': 'Growth',
      'en': 'Growth',
    },
    'q9227s4j': {
      'de': 'Revenue',
      'en': 'Revenue',
    },
    'bk0ttpsc': {
      'de': 'Users',
      'en': 'Users',
    },
    'u3fk8ldn': {
      'de': 'Rating',
      'en': 'rating',
    },
  },
  // statementBar
  {
    'ae6ts1qm': {
      'de': 'Wins',
      'en': 'Wins',
    },
    'ol9ojtkm': {
      'de': 'Streaks',
      'en': 'streaks',
    },
    '2ssuyxem': {
      'de': 'Likes',
      'en': 'likes',
    },
    'n4g5hjw5': {
      'de': 'Magic',
      'en': 'Magic',
    },
  },
  // profileCard2
  {
    '7ugydqcp': {
      'de': 'Aria',
      'en': 'Aria',
    },
    'lak4z4ho': {
      'de': '24 Years',
      'en': '24 Years',
    },
    '5jh98f1b': {
      'de': 'Your charming AI companion',
      'en': 'Your charming AI companion',
    },
  },
  // user_ListSmall
  {
    'ko2k7m0e': {
      'de': 'name@domainname.com',
      'en': 'name@domainname.com',
    },
    'o646kstc': {
      'de': 'ME',
      'en': 'ME',
    },
  },
  // profileCardXXL
  {
    'qgd35461': {
      'de': 'Aria',
      'en': 'Aria',
    },
    'l82hd4hq': {
      'de': '24 Years',
      'en': '24 Years',
    },
    'u1y67wcc': {
      'de': 'Your charming AI companion',
      'en': 'Your charming AI companion',
    },
  },
  // chooseButtonTransparent
  {
    '177p7j7x': {
      'de': 'Anime',
      'en': 'Anime',
    },
  },
  // editProfile_auth_2_1
  {
    '9asb5pvy': {
      'de': 'Foto hochladen',
      'en': 'Upload photo',
    },
    'zjn2q188': {
      'de': 'Name',
      'en': 'name',
    },
    '09mcfk98': {
      'de': 'Dein name...',
      'en': 'Your name...',
    },
    'p2lx4hie': {
      'de': '[display_name]',
      'en': '[display_name]',
    },
  },
  // FooterDesktop
  {
    'yf70kqbm': {
      'de': 'Seiten',
      'en': 'pages',
    },
    'ktkzfub1': {
      'de': 'Home',
      'en': 'Home',
    },
    'n2ruhw1d': {
      'de': 'Entdecken',
      'en': 'Discover',
    },
    'l1l8j2xd': {
      'de': 'AI Partner erstellen',
      'en': 'Create AI Partner',
    },
    'd0m5zw7g': {
      'de': 'Chats',
      'en': 'chats',
    },
    'igxnqez6': {
      'de': 'Meine AI',
      'en': 'My AI',
    },
    'godcdk70': {
      'de': 'Account',
      'en': 'account',
    },
    'yumy3gpl': {
      'de': 'Login',
      'en': 'Login',
    },
    '7z49pu5j': {
      'de': 'Premium Mitgliedschaft',
      'en': 'Premium Membership',
    },
    'xtsf1oup': {
      'de': 'Kontakt',
      'en': 'contact',
    },
    'yc967yb4': {
      'de': 'info@rasondo.com',
      'en': 'info@rasondo.com',
    },
    'tc1aasv0': {
      'de': 'Datenschutz',
      'en': 'data protection',
    },
    'up4nv2b6': {
      'de': 'Impressum',
      'en': 'imprint',
    },
    '6m4olgj7': {
      'de': 'AGB',
      'en': 'Terms and Conditions',
    },
    'r1755ppl': {
      'de': '2024 Rasondo. All rights reserved',
      'en': '2024 Rasondo. All rights reserved',
    },
  },
  // FooterMobile
  {
    'nomfsa0u': {
      'de': 'Seiten',
      'en': 'pages',
    },
    'dlhqp26j': {
      'de': 'Home',
      'en': 'Home',
    },
    'pm9fyhtk': {
      'de': 'Entdecken',
      'en': 'Discover',
    },
    'ap7l65cs': {
      'de': 'AI Partner erstellen',
      'en': 'Create AI Partner',
    },
    '8wsex5ep': {
      'de': 'Chats',
      'en': 'chats',
    },
    '6mer3000': {
      'de': 'Meine AI',
      'en': 'My AI',
    },
    'ezibrawi': {
      'de': 'Account',
      'en': 'account',
    },
    '85d2jvfs': {
      'de': 'Login',
      'en': 'Login',
    },
    'zudpbv0r': {
      'de': 'Premium Mitgliedschaft',
      'en': 'Premium Membership',
    },
    'wptn1k52': {
      'de': 'Contact us',
      'en': 'Contact us',
    },
    's370e5gd': {
      'de': 'info@rasondo.com',
      'en': 'info@rasondo.com',
    },
    '6fzjbl0o': {
      'de': 'Datenschutz',
      'en': 'data protection',
    },
    'z1engzr2': {
      'de': 'Impressum',
      'en': 'imprint',
    },
    'nxnrj8r3': {
      'de': 'AGB',
      'en': 'Terms and Conditions',
    },
  },
  // bottomSheetEmailSent
  {
    'nj8pzasd': {
      'de': 'Create Note',
      'en': 'Create Note',
    },
    'k04cozqb': {
      'de': 'Find members by searching below',
      'en': 'Find members by searching below',
    },
    'n5ueg85v': {
      'de': 'Enter your note here...',
      'en': 'Enter your note here...',
    },
    'me1io4ik': {
      'de': 'Create Note',
      'en': 'Create Note',
    },
  },
  // ageVerification
  {
    '6yhnlh1l': {
      'de': 'Inhalte für 18+',
      'en': 'content for 18+',
    },
    '80cke4m0': {
      'de':
          'Diese Seite ist nur für Erwachsene. \nEs enthät Ai generierte Inhalte, die für Erwachsene bestimmt sind.',
      'en':
          'This site is for adults only. \nIt contains AI generated content intended for adults.',
    },
    'qgk6424z': {
      'de': 'Ich bin über 18',
      'en': 'I am over 18',
    },
  },
  // messageLimitCTA
  {
    'ozbim4dh': {
      'de': 'Nachricht Limit erreicht',
      'en': 'Message limit reached',
    },
    'irmqn6e3': {
      'de': 'Werde Premium und chatte so viel du möchtest!',
      'en': 'Become Premium and chat as much as you want!',
    },
    '5fvkzl7o': {
      'de': 'Jetzt Premium werden!',
      'en': 'Become Premium now!',
    },
  },
  // createCharacterLimitCTA
  {
    '3c4cmhi2': {
      'de': 'Create Limit erreicht',
      'en': 'Create Limit reached',
    },
    'epjotz8o': {
      'de': 'Werde Premium und erstelle so viele Charactere wie du möchtest!',
      'en': 'Become Premium and create as many characters as you want!',
    },
    '6v2lpblx': {
      'de': 'Jetzt Premium werden!',
      'en': 'Become Premium now!',
    },
  },
  // cookieBanner
  {
    '685ipd8o': {
      'de': 'Cookies',
      'en': 'cookies',
    },
    'q5lp4wrf': {
      'de':
          'Wir nutzen Cookies, um unsere Webseite zu verbessern und Ihnen personalisierte Inhalte anzubieten. Einige Cookies sind notwendig, um die Funktionalität der Webseite zu gewährleisten, während andere uns helfen, die Benutzererfahrung zu optimieren und für Sie relevante Werbung anzuzeigen.Indem Sie auf \"Akzeptieren\" klicken, stimmen Sie der Verwendung aller Cookies zu. Sie können Ihre Einwilligung jederzeit widerrufen. Weitere Informationen finden Sie in unserer Datenschutzbestimmungen.',
      'en':
          'We use cookies to improve our website and offer you personalized content. Some cookies are necessary to ensure the functionality of the website, while others help us optimize the user experience and display advertising that is relevant to you.By clicking \"Accept\", you agree to the use of all cookies. You can withdraw your consent at any time. For more information, see our privacy policy.',
    },
    '4du2trnj': {
      'de': 'Ablehnen',
      'en': 'Refuse',
    },
    'kzy8ds8z': {
      'de': 'Akzeptieren',
      'en': 'Accept',
    },
  },
  // verififizierungFehlgeschlagen
  {
    'bqnkv5wl': {
      'de': 'Verifizierung fehlgeschlagen',
      'en': 'Verification failed',
    },
    'yr16cou4': {
      'de':
          'Es scheint, als hätte die Verifizierung nicht geklappt. \nBitte versuchen Sie es erneut.',
      'en': 'It seems that the verification failed. \nPlease try again.',
    },
    'asuyruca': {
      'de': 'Zur Registrierung',
      'en': 'To register',
    },
    'rotlqch7': {
      'de': 'E-Mail erneut senden',
      'en': 'Resend email',
    },
  },
  // eMailVerifiziert
  {
    'ffj5mew1': {
      'de': 'E-Mail verifiziert!',
      'en': 'Email verified!',
    },
    'biul9kd5': {
      'de': 'Jetzt Charactere entdecken!',
      'en': 'Discover characters now!',
    },
  },
  // Miscellaneous
  {
    'hpg8mc4d': {
      'de': '',
      'en': '',
    },
    '3zrll42n': {
      'de': '',
      'en': '',
    },
    'hh8j4y1d': {
      'de': '',
      'en': '',
    },
    'dlt329xx': {
      'de':
          'Erlaube der App, deinen Standort zu verwenden, um dir personalisierte Erlebnisse basierend auf deinem Standort zu bieten.',
      'en':
          'Allow the app to use your location to provide you with personalized experiences based on your location.',
    },
    '8bp186iv': {
      'de':
          'Erhalte Benachrichtigungen, um immer auf dem neuesten Stand zu bleiben und keine wichtigen Updates zu verpassen',
      'en':
          'Get notifications to stay up to date and not miss any important updates',
    },
    '9jp1f255': {
      'de': '',
      'en': '',
    },
    'anziotdz': {
      'de': '',
      'en': '',
    },
    '6uvr30vh': {
      'de': '',
      'en': '',
    },
    'hqojyniq': {
      'de': '',
      'en': '',
    },
    'r5vq8x0f': {
      'de': '',
      'en': '',
    },
    '9ozsm6cx': {
      'de': '',
      'en': '',
    },
    '24zqutcs': {
      'de': '',
      'en': '',
    },
    'zxy7oxha': {
      'de': '',
      'en': '',
    },
    'gqpepapd': {
      'de': '',
      'en': '',
    },
    'v9lhta7b': {
      'de': '',
      'en': '',
    },
    'tau8olad': {
      'de': '',
      'en': '',
    },
    'hbnaiopb': {
      'de': '',
      'en': '',
    },
    'yuoxrlqs': {
      'de': '',
      'en': '',
    },
    'ag7dgpz7': {
      'de': '',
      'en': '',
    },
    '61je7gq9': {
      'de': '',
      'en': '',
    },
    'r32svzzw': {
      'de': '',
      'en': '',
    },
    '2kf6nv04': {
      'de': '',
      'en': '',
    },
    'dryxclpm': {
      'de': '',
      'en': '',
    },
    'j3gsgagc': {
      'de': '',
      'en': '',
    },
    'gilcymdj': {
      'de': '',
      'en': '',
    },
    '76q5a2a5': {
      'de': '',
      'en': '',
    },
    'bgferapj': {
      'de': '',
      'en': '',
    },
    'gya0yy34': {
      'de': '',
      'en': '',
    },
    'of1e285z': {
      'de': '',
      'en': '',
    },
    '5uqzb49s': {
      'de': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
