library learning_duel.globals;

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


String fileName = "UserSettingsTest.json";
UserSettings userSettings = UserSettings();
final userNameController = TextEditingController(text: userSettings.userName);
String myProfIsAGamerIcon = "assets/images/myProfIsAGamerIcon.png";


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
    debugPrint(path + "/" + fileName);
    return File(path + "/" + fileName);
  }

  // Call all methods that load app data
  Future<void> loadAllData() async {
    await loadUserSettings();
  }

  // Write the username to the settings file
  Future<File> saveUserSettings() async {
    userSettings.userName = userNameController.text;

    final file = await _localFile;
    // Write the file
    return file.writeAsString(jsonEncode(userSettings));
  }

  // Read the username from the settings file
  Future<void> loadUserSettings() async {
    try {
      final file = await _localFile;

      if (file.existsSync()) {
        // Read the file
        final contents = await file.readAsString();
        userSettings = UserSettings.fromJson(jsonDecode(contents));
        userNameController.text = userSettings.userName;

        debugPrint("loaded user settings for : " + userSettings.userName);
      } else {
        file.writeAsString(jsonEncode(userSettings));
        debugPrint("created user settings file");
      }
    } catch (e) {
      debugPrint("loading user settings caused error");
      debugPrint(e.toString());
    }
  }
}

class Card {
  String category;
  String question;
  var answers;
  int correctAnswerIdx;

  Card(this.category, this.question, this.answers, this.correctAnswerIdx);

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

class UserSettings {
  String userName = "Anonymous User";
  String profilePicture = "assets/images/myProfIsAGamerIcon.png";

  UserSettings();

  UserSettings.fromJson(Map<String, dynamic> json)
    : userName = json['userName'],
      profilePicture = json['profilePicture'];

  Map <String, dynamic> toJson() => {
      'userName': userName,
      'profilePicture': profilePicture,
    };
}