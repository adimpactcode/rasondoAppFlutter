// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileStruct extends FFFirebaseStruct {
  UserProfileStruct({
    String? uId,
    String? email,
    String? displayName,
    String? photoUrl,
    bool? isPremium,
    int? messagesSentCount,
    int? charactersCreatedCount,
    List<DocumentReference>? charactersLiked,
    String? isPayPerUse,
    DateTime? createdTime,
    DateTime? lastActiveTime,
    List<DocumentReference>? userChats,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uId = uId,
        _email = email,
        _displayName = displayName,
        _photoUrl = photoUrl,
        _isPremium = isPremium,
        _messagesSentCount = messagesSentCount,
        _charactersCreatedCount = charactersCreatedCount,
        _charactersLiked = charactersLiked,
        _isPayPerUse = isPayPerUse,
        _createdTime = createdTime,
        _lastActiveTime = lastActiveTime,
        _userChats = userChats,
        super(firestoreUtilData);

  // "uId" field.
  String? _uId;
  String get uId => _uId ?? '';
  set uId(String? val) => _uId = val;

  bool hasUId() => _uId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "is_premium" field.
  bool? _isPremium;
  bool get isPremium => _isPremium ?? false;
  set isPremium(bool? val) => _isPremium = val;

  bool hasIsPremium() => _isPremium != null;

  // "messages_sent_count" field.
  int? _messagesSentCount;
  int get messagesSentCount => _messagesSentCount ?? 0;
  set messagesSentCount(int? val) => _messagesSentCount = val;

  void incrementMessagesSentCount(int amount) =>
      messagesSentCount = messagesSentCount + amount;

  bool hasMessagesSentCount() => _messagesSentCount != null;

  // "characters_created_count" field.
  int? _charactersCreatedCount;
  int get charactersCreatedCount => _charactersCreatedCount ?? 0;
  set charactersCreatedCount(int? val) => _charactersCreatedCount = val;

  void incrementCharactersCreatedCount(int amount) =>
      charactersCreatedCount = charactersCreatedCount + amount;

  bool hasCharactersCreatedCount() => _charactersCreatedCount != null;

  // "characters_liked" field.
  List<DocumentReference>? _charactersLiked;
  List<DocumentReference> get charactersLiked => _charactersLiked ?? const [];
  set charactersLiked(List<DocumentReference>? val) => _charactersLiked = val;

  void updateCharactersLiked(Function(List<DocumentReference>) updateFn) {
    updateFn(_charactersLiked ??= []);
  }

  bool hasCharactersLiked() => _charactersLiked != null;

  // "is_pay_per_use" field.
  String? _isPayPerUse;
  String get isPayPerUse => _isPayPerUse ?? '';
  set isPayPerUse(String? val) => _isPayPerUse = val;

  bool hasIsPayPerUse() => _isPayPerUse != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;

  bool hasCreatedTime() => _createdTime != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  set lastActiveTime(DateTime? val) => _lastActiveTime = val;

  bool hasLastActiveTime() => _lastActiveTime != null;

  // "userChats" field.
  List<DocumentReference>? _userChats;
  List<DocumentReference> get userChats => _userChats ?? const [];
  set userChats(List<DocumentReference>? val) => _userChats = val;

  void updateUserChats(Function(List<DocumentReference>) updateFn) {
    updateFn(_userChats ??= []);
  }

  bool hasUserChats() => _userChats != null;

  static UserProfileStruct fromMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        uId: data['uId'] as String?,
        email: data['email'] as String?,
        displayName: data['display_name'] as String?,
        photoUrl: data['photo_url'] as String?,
        isPremium: data['is_premium'] as bool?,
        messagesSentCount: castToType<int>(data['messages_sent_count']),
        charactersCreatedCount:
            castToType<int>(data['characters_created_count']),
        charactersLiked: getDataList(data['characters_liked']),
        isPayPerUse: data['is_pay_per_use'] as String?,
        createdTime: data['created_time'] as DateTime?,
        lastActiveTime: data['last_active_time'] as DateTime?,
        userChats: getDataList(data['userChats']),
      );

  static UserProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'uId': _uId,
        'email': _email,
        'display_name': _displayName,
        'photo_url': _photoUrl,
        'is_premium': _isPremium,
        'messages_sent_count': _messagesSentCount,
        'characters_created_count': _charactersCreatedCount,
        'characters_liked': _charactersLiked,
        'is_pay_per_use': _isPayPerUse,
        'created_time': _createdTime,
        'last_active_time': _lastActiveTime,
        'userChats': _userChats,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uId': serializeParam(
          _uId,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'is_premium': serializeParam(
          _isPremium,
          ParamType.bool,
        ),
        'messages_sent_count': serializeParam(
          _messagesSentCount,
          ParamType.int,
        ),
        'characters_created_count': serializeParam(
          _charactersCreatedCount,
          ParamType.int,
        ),
        'characters_liked': serializeParam(
          _charactersLiked,
          ParamType.DocumentReference,
          isList: true,
        ),
        'is_pay_per_use': serializeParam(
          _isPayPerUse,
          ParamType.String,
        ),
        'created_time': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
        'last_active_time': serializeParam(
          _lastActiveTime,
          ParamType.DateTime,
        ),
        'userChats': serializeParam(
          _userChats,
          ParamType.DocumentReference,
          isList: true,
        ),
      }.withoutNulls;

  static UserProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        uId: deserializeParam(
          data['uId'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        isPremium: deserializeParam(
          data['is_premium'],
          ParamType.bool,
          false,
        ),
        messagesSentCount: deserializeParam(
          data['messages_sent_count'],
          ParamType.int,
          false,
        ),
        charactersCreatedCount: deserializeParam(
          data['characters_created_count'],
          ParamType.int,
          false,
        ),
        charactersLiked: deserializeParam<DocumentReference>(
          data['characters_liked'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['charactersMain'],
        ),
        isPayPerUse: deserializeParam(
          data['is_pay_per_use'],
          ParamType.String,
          false,
        ),
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.DateTime,
          false,
        ),
        lastActiveTime: deserializeParam(
          data['last_active_time'],
          ParamType.DateTime,
          false,
        ),
        userChats: deserializeParam<DocumentReference>(
          data['userChats'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['chats'],
        ),
      );

  @override
  String toString() => 'UserProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserProfileStruct &&
        uId == other.uId &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        isPremium == other.isPremium &&
        messagesSentCount == other.messagesSentCount &&
        charactersCreatedCount == other.charactersCreatedCount &&
        listEquality.equals(charactersLiked, other.charactersLiked) &&
        isPayPerUse == other.isPayPerUse &&
        createdTime == other.createdTime &&
        lastActiveTime == other.lastActiveTime &&
        listEquality.equals(userChats, other.userChats);
  }

  @override
  int get hashCode => const ListEquality().hash([
        uId,
        email,
        displayName,
        photoUrl,
        isPremium,
        messagesSentCount,
        charactersCreatedCount,
        charactersLiked,
        isPayPerUse,
        createdTime,
        lastActiveTime,
        userChats
      ]);
}

UserProfileStruct createUserProfileStruct({
  String? uId,
  String? email,
  String? displayName,
  String? photoUrl,
  bool? isPremium,
  int? messagesSentCount,
  int? charactersCreatedCount,
  String? isPayPerUse,
  DateTime? createdTime,
  DateTime? lastActiveTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserProfileStruct(
      uId: uId,
      email: email,
      displayName: displayName,
      photoUrl: photoUrl,
      isPremium: isPremium,
      messagesSentCount: messagesSentCount,
      charactersCreatedCount: charactersCreatedCount,
      isPayPerUse: isPayPerUse,
      createdTime: createdTime,
      lastActiveTime: lastActiveTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserProfileStruct? updateUserProfileStruct(
  UserProfileStruct? userProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserProfileStructData(
  Map<String, dynamic> firestoreData,
  UserProfileStruct? userProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userProfile == null) {
    return;
  }
  if (userProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userProfileData =
      getUserProfileFirestoreData(userProfile, forFieldValue);
  final nestedData =
      userProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserProfileFirestoreData(
  UserProfileStruct? userProfile, [
  bool forFieldValue = false,
]) {
  if (userProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userProfile.toMap());

  // Add any Firestore field values
  userProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserProfileListFirestoreData(
  List<UserProfileStruct>? userProfiles,
) =>
    userProfiles?.map((e) => getUserProfileFirestoreData(e, true)).toList() ??
    [];
