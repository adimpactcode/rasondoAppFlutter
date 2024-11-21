import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _chatHistoryState =
          prefs.getStringList('ff_chatHistoryState') ?? _chatHistoryState;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userProfile')) {
        try {
          final serializedData = prefs.getString('ff_userProfile') ?? '{}';
          _userProfile =
              UserProfileStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _isBannerDismissed =
          prefs.getBool('ff_isBannerDismissed') ?? _isBannerDismissed;
    });
    _safeInit(() {
      _apiKey = prefs.getString('ff_apiKey') ?? _apiKey;
    });
    _safeInit(() {
      _userId = prefs.getString('ff_userId') ?? _userId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _imageStyleState = '';
  String get imageStyleState => _imageStyleState;
  set imageStyleState(String value) {
    _imageStyleState = value;
  }

  bool _ispublicState = false;
  bool get ispublicState => _ispublicState;
  set ispublicState(bool value) {
    _ispublicState = value;
  }

  String _characterReferenceImage = '';
  String get characterReferenceImage => _characterReferenceImage;
  set characterReferenceImage(String value) {
    _characterReferenceImage = value;
  }

  DocumentReference? _currentChatId;
  DocumentReference? get currentChatId => _currentChatId;
  set currentChatId(DocumentReference? value) {
    _currentChatId = value;
  }

  String _userMessageState = '';
  String get userMessageState => _userMessageState;
  set userMessageState(String value) {
    _userMessageState = value;
  }

  List<String> _chatHistoryState = [];
  List<String> get chatHistoryState => _chatHistoryState;
  set chatHistoryState(List<String> value) {
    _chatHistoryState = value;
    prefs.setStringList('ff_chatHistoryState', value);
  }

  void addToChatHistoryState(String value) {
    chatHistoryState.add(value);
    prefs.setStringList('ff_chatHistoryState', _chatHistoryState);
  }

  void removeFromChatHistoryState(String value) {
    chatHistoryState.remove(value);
    prefs.setStringList('ff_chatHistoryState', _chatHistoryState);
  }

  void removeAtIndexFromChatHistoryState(int index) {
    chatHistoryState.removeAt(index);
    prefs.setStringList('ff_chatHistoryState', _chatHistoryState);
  }

  void updateChatHistoryStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chatHistoryState[index] = updateFn(_chatHistoryState[index]);
    prefs.setStringList('ff_chatHistoryState', _chatHistoryState);
  }

  void insertAtIndexInChatHistoryState(int index, String value) {
    chatHistoryState.insert(index, value);
    prefs.setStringList('ff_chatHistoryState', _chatHistoryState);
  }

  String _imagePromptState = '';
  String get imagePromptState => _imagePromptState;
  set imagePromptState(String value) {
    _imagePromptState = value;
  }

  String _imageReference = '';
  String get imageReference => _imageReference;
  set imageReference(String value) {
    _imageReference = value;
  }

  String _generatedImageUrlState = '';
  String get generatedImageUrlState => _generatedImageUrlState;
  set generatedImageUrlState(String value) {
    _generatedImageUrlState = value;
  }

  String _selectedgenderState = '';
  String get selectedgenderState => _selectedgenderState;
  set selectedgenderState(String value) {
    _selectedgenderState = value;
  }

  UserProfileStruct _userProfile = UserProfileStruct.fromSerializableMap(jsonDecode(
      '{\"characters_liked\":\"[]\",\"userCharacters\":\"[]\",\"userChats\":\"[]\"}'));
  UserProfileStruct get userProfile => _userProfile;
  set userProfile(UserProfileStruct value) {
    _userProfile = value;
    prefs.setString('ff_userProfile', value.serialize());
  }

  void updateUserProfileStruct(Function(UserProfileStruct) updateFn) {
    updateFn(_userProfile);
    prefs.setString('ff_userProfile', _userProfile.serialize());
  }

  bool _isLightMode = true;
  bool get isLightMode => _isLightMode;
  set isLightMode(bool value) {
    _isLightMode = value;
  }

  bool _isBannerDismissed = false;
  bool get isBannerDismissed => _isBannerDismissed;
  set isBannerDismissed(bool value) {
    _isBannerDismissed = value;
    prefs.setBool('ff_isBannerDismissed', value);
  }

  String _apiKey = 'e02bff9e-2739-47ef-8a8c-4149de622d5e';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
    prefs.setString('ff_apiKey', value);
  }

  String _characterId = '';
  String get characterId => _characterId;
  set characterId(String value) {
    _characterId = value;
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
    prefs.setString('ff_userId', value);
  }

  String _characterChoice = '';
  String get characterChoice => _characterChoice;
  set characterChoice(String value) {
    _characterChoice = value;
  }

  String _personalityChoice = '';
  String get personalityChoice => _personalityChoice;
  set personalityChoice(String value) {
    _personalityChoice = value;
  }

  String _voiceTon = '';
  String get voiceTon => _voiceTon;
  set voiceTon(String value) {
    _voiceTon = value;
  }

  String _job = '';
  String get job => _job;
  set job(String value) {
    _job = value;
  }

  String _intimateBehaviour = '';
  String get intimateBehaviour => _intimateBehaviour;
  set intimateBehaviour(String value) {
    _intimateBehaviour = value;
  }

  String _scenarios = '';
  String get scenarios => _scenarios;
  set scenarios(String value) {
    _scenarios = value;
  }

  String _description = '';
  String get description => _description;
  set description(String value) {
    _description = value;
  }

  String _characterAdmin = '';
  String get characterAdmin => _characterAdmin;
  set characterAdmin(String value) {
    _characterAdmin = value;
  }

  String _hairColour = '';
  String get hairColour => _hairColour;
  set hairColour(String value) {
    _hairColour = value;
  }

  String _hairStyle = '';
  String get hairStyle => _hairStyle;
  set hairStyle(String value) {
    _hairStyle = value;
  }

  String _eyeColour = '';
  String get eyeColour => _eyeColour;
  set eyeColour(String value) {
    _eyeColour = value;
  }

  String _bodyTyp = '';
  String get bodyTyp => _bodyTyp;
  set bodyTyp(String value) {
    _bodyTyp = value;
  }

  String _breastSize = '';
  String get breastSize => _breastSize;
  set breastSize(String value) {
    _breastSize = value;
  }

  String _buttSize = '';
  String get buttSize => _buttSize;
  set buttSize(String value) {
    _buttSize = value;
  }

  String _clothing = '';
  String get clothing => _clothing;
  set clothing(String value) {
    _clothing = value;
  }

  String _ambiente = '';
  String get ambiente => _ambiente;
  set ambiente(String value) {
    _ambiente = value;
  }

  String _ethnicity = '';
  String get ethnicity => _ethnicity;
  set ethnicity(String value) {
    _ethnicity = value;
  }

  String _accessoires = '';
  String get accessoires => _accessoires;
  set accessoires(String value) {
    _accessoires = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _gender = '';
  String get gender => _gender;
  set gender(String value) {
    _gender = value;
  }

  String _age = '';
  String get age => _age;
  set age(String value) {
    _age = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
