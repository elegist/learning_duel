import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({Key? key, this.question, this.options}) : super(key: key);
  final question;
  final options;

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GestureDetector(
              onTap: () {
                final snackBar = SnackBar(content: Text(options[1]));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                padding: EdgeInsets.all(5.0),
                color: Colors.blue,
                height: 200,
                width: 150,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            question,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text(options[0])),
                          Expanded(child: Text(options[1]))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text(options[2])),
                          Expanded(child: Text(options[3]))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
