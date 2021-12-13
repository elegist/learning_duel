import 'package:flutter/material.dart';
import 'main_menu.dart';
import 'globals.dart' as globals;

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); // fix used to make sure that everything is loaded before app is run
  await globals.storage.loadAllData(); // wait for data to load
  runApp(MyApp()); // run the actual app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Duel',
      home: MainMenu(),
    );
  }
}