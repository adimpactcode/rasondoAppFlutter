import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<MessagesStruct>? jsonToMessages(List<dynamic>? apiLlmPageload) {
  // Überprüfen, ob die API-Daten null sind
  if (apiLlmPageload == null || apiLlmPageload.isEmpty) {
    return null;
  }

  // Mapping der API-Daten in den Custom-Datentyp "MessagesStruct"
  List<MessagesStruct> messages = apiLlmPageload.map((data) {
    return MessagesStruct(
      role: data['role'] ?? '', // Zugriff auf das "role"-Feld
      content: data['content'] ?? '', // Zugriff auf das "content"-Feld
      isImage: false, // Setze "isImage" standardmäßig auf false
    );
  }).toList();

  return messages;
}

int getItemAtIndex(List<MessagesStruct>? messages) {
  // Return -1 if the list is null or empty
  if (messages == null || messages.isEmpty) {
    return -1;
  }

  // Return the index of the last element
  return messages.length - 1;
}

String buildAssistantMessage(MessagesStruct? message) {
  if (message == null) {
    return ""; // Falls message null ist, gib einen leeren String zurück
  }

  if (message.messages != null && message.messages!.isNotEmpty) {
    return message.messages!.join(
        ""); // Falls gestreamte Nachrichten existieren, Chunks zusammenfügen
  }

  return message.content ??
      ""; // Falls kein Streaming, den normalen Content nutzen
}
