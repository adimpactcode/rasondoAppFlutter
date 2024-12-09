import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NobitaLLMCall {
  static Future<ApiCallResponse> call({
    dynamic? systemMessageJson,
    dynamic? oldChatMessagesJson,
    dynamic? messagesJson,
    String? userInput = '',
  }) async {
    final systemMessage = _serializeJson(systemMessageJson, true);
    final oldChatMessages = _serializeJson(oldChatMessagesJson, true);
    final messages = _serializeJson(messagesJson, true);
    final ffApiRequestBody = '''
{
  "systemMessage": ${systemMessage}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nobitaLLM',
      apiUrl: 'https://api.novita.ai/v3/openai/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer e02bff9e-2739-47ef-8a8c-4149de622d5e',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aiResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class NobitaLLMENCall {
  static Future<ApiCallResponse> call({
    dynamic? messagesJson,
  }) async {
    final messages = _serializeJson(messagesJson, true);
    final ffApiRequestBody = '''
{
  "model": "meta-llama/llama-3-70b-instruct",
  "messages": ${messages}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nobitaLLMEN',
      apiUrl: 'https://api.novita.ai/v3/openai/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer e02bff9e-2739-47ef-8a8c-4149de622d5e',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aiResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class NovitaTextToImageCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "extra": {
    "response_image_type": "jpeg",
    "enable_nsfw_detection": false,
    "nsfw_detection_level": 0
  },
  "request": {
    "model_name": "epicrealismXL_v10_247189.safetensors",
    "prompt": "A beautiful, sexy asian woman",
    "negative_prompt": "bottle,bad face,child,Kind",
    "width": 1024,
    "height": 1024,
    "image_num": 1,
    "steps": 20,
    "seed": 123,
    "clip_skip": 1,
    "guidance_scale": 7.5,
    "sampler_name": "Euler a"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'novitaTextToImage',
      apiUrl: 'https://api.novita.ai/v3/async/txt2img',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer 83852efe-e1e0-4bf5-805f-ea74ebe84a82',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? textToImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.task_id''',
      ));
}

class NovitaFunctionLLMCall {
  static Future<ApiCallResponse> call({
    dynamic? messagesJson,
    String? characterId = '0zjZs5Enh8YgEXQ6Jx8B',
    String? userId = 'JIxHsLuFKNWif20WesSMdaKKJhs2',
    String? userInput = '',
  }) async {
    final messages = _serializeJson(messagesJson);
    final ffApiRequestBody = '''
{
  "characterId": "${characterId}",
  "userId": "${userId}",
  "userInput": "${userInput}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'novitaFunctionLLM',
      apiUrl:
          'https://us-central1-rasondo-v3-wpjwei.cloudfunctions.net/makePostCall',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aiResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.assistantMessage''',
      ));
  static String? startMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.initialMessage''',
      ));
  static List? lastMessages(dynamic response) => getJsonField(
        response,
        r'''$.chatContext''',
        true,
      ) as List?;
}

class NovitaFunctionTextToImageCall {
  static Future<ApiCallResponse> call({
    String? characterId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "characterId": "${characterId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'novitaFunctionTextToImage',
      apiUrl:
          'https://us-central1-rasondo-v3-wpjwei.cloudfunctions.net/generateCharacterImage',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? generatedImageUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imageUrl''',
      ));
  static String? imegaeGenerationSuccess(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class NovitaFunctionImageToImageCall {
  static Future<ApiCallResponse> call({
    String? characterId = '',
    String? img2imgAppereance = '',
    String? img2imgAmbiente = '',
  }) async {
    final ffApiRequestBody = '''
{
  "characterId": "${characterId}",
  "img2imgChangeAppereance": "${img2imgAppereance}",
  "img2imgChangeAmbiente": "${img2imgAmbiente}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'novitaFunctionImageToImage',
      apiUrl:
          'https://us-central1-rasondo-v3-wpjwei.cloudfunctions.net/generateVariantImage',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubscriptionCallPaypalCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? planId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "planId": "${planId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'subscriptionCallPaypal',
      apiUrl:
          'https://us-central1-rasondo-v3-wpjwei.cloudfunctions.net/subscribeUser',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? subscriptionSuccess(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? approvalUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.approvalUrl''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
