import 'package:flutter/material.dart';

//implementing the gesture detector inside this class?

class MyCard extends StatelessWidget {
  MyCard({Key? key, this.question}) : super (key: key);
  final question;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), 
        child: Container(
          padding: EdgeInsets.all(5.0), 
          color: Colors.blue, 
          height: 150, 
          width: 150,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      question,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),),)
    );
  }
}