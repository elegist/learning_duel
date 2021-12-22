import 'package:flutter/material.dart';
import 'package:learning_duel/PlayedCard.dart';
import 'package:learning_duel/PlayedCardChoice.dart';

import 'exerciseCard.dart';

class ScreenPlayedCard extends StatelessWidget {
  const ScreenPlayedCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2C5822),
        body: Container(
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 30,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      }, // Handle your callback.
                      splashColor: Colors.blue.withOpacity(0.5),
                      child: Icon(
                        Icons.home,
                        size: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text('Opponent')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '*',
                    style: TextStyle(fontSize: 60),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 60),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 60),
                  ),
                ],
              ),
              Spacer(),
              PlayedCard(question: 'Test', options: ['1', '2', '3', '4'],),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '*',
                    style: TextStyle(fontSize: 60),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 60),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 60),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You')
                ],
              )
            ],
          )),
        ));
  }
}