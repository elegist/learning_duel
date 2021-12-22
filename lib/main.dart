import 'package:flutter/material.dart';
import 'package:learning_duel/ScreenChooseAnswer.dart';
import 'package:learning_duel/ScreenChooseCard.dart';
import 'package:learning_duel/exerciseCard.dart';

import 'ScreenPlayedCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Duel',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenChooseAnswer();
  }
}
