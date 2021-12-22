library learning_duel.globals;

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

String fileName = "username.txt";
String username = "Anonymous User";
final userNameController = TextEditingController(text: username);
String myProfIsAGamerIcon = "assets/images/myProfIsAGamerIcon.png";
String profilePicture = "assets/images/myProfIsAGamerIcon.png";

SettingsStorage storage = SettingsStorage();

class SettingsStorage {

  // Get local app directory
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  // Get path of settings file
  Future<File> get _localFile async {
    final path = await _localPath;
    print(path + "/" + fileName);
    return File(path + "/" + fileName);
  }

  // Call all methods that load app data
  Future<void> loadAllData() async {
    username = await loadUsername();
  }

  // Write the username to the settings file
  Future<File> saveUsername() async {
    username = userNameController.text;

    final file = await _localFile;
    // Write the file
    return file.writeAsString(username);
  }

  // Read the username from the settings file
  Future<String> loadUsername() async {
    try {
      final file = await _localFile;
      // Read the file
      final contents = await file.readAsString();
      username = contents;
    } catch (e) {
      print("loading username caused error");
      print(e.toString());
    }
    userNameController.text = username;
    return username;
  }

  Map <String, dynamic> settingsToJson() {
    return {
      'username': username,
      'profilePicture': profilePicture,
    };
  }

  void settingsFromJson() {

  }
}

void createDefaultSettingsFile() {
  String defaultUsername = "Anonymous User";
  String defaultProfilePicture = "assets/images/myProfIsAGamerIcon.png";

  username = defaultUsername;

  String defaultDeck = "";
  String defaultCard1 = "";
}


class Card {
  String category = "";
  String question = "";
  var answers;
  int correctAnswerIdx = 0;

  Card(String category, String question, var answers, int correctAnswerIdx){
    this.category = category;
    this.question = question;
    this.answers = answers;
    this.correctAnswerIdx = correctAnswerIdx;
  }

  Map <String, dynamic> toJson() {
    return {
      'category': category,
      'question': question,
     // for (int answerId = 1; answerId <= answers.length; answerId++) {
     //   'answer': question,
     // }
    };
  }

}