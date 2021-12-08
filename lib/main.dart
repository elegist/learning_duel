import 'package:flutter/material.dart';
import 'package:learning_duel/exerciseCard.dart';

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
    return Scaffold(
        backgroundColor: Color(0xff2C5822),
        body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ExerciseCard(
                  question: "Question 1",
                  options: ["Option", "Option", "Option", "Option"],
                ),
                ExerciseCard(
                  question: "Question 2",
                  options: ["Option", "Option", "Option", "Option"],
                ),
                ExerciseCard(
                  question: "Question 3, which happens to be a long one",
                  options: ["Option", "Option", "Option", "Option"],
                ),
              ],
            ),
          ),
        ));
  }
}
