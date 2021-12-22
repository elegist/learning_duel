import 'package:flutter/material.dart';

class PlayedCard extends StatefulWidget {
  PlayedCard({Key? key, this.question, this.options, this.optionStates}) : super(key: key);
  final question;
  final options;
  final optionStates;

  @override
  State<PlayedCard> createState() => _PlayedCardState();
}

class _PlayedCardState extends State<PlayedCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
            child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Option(
                optionText: widget.options[0],
                isCorrect: widget.optionStates[0],
              ),
              Option(optionText: widget.options[1], isCorrect: widget.optionStates[1])
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Option(optionText: widget.options[2], isCorrect: widget.optionStates[2]),
              Option(optionText: widget.options[3], isCorrect: widget.optionStates[3])
            ]),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(5.0),
                width: 150,
                height: 180,
                color: Color(0xFFD3D3D3),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            widget.question,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )));
  }
}

class Option extends StatefulWidget {
  const Option({Key? key, this.optionText, this.isCorrect}) : super(key: key);

  final optionText;
  final isCorrect;

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        width: 120,
        height: 40,
        color: Color(0xFFD3D3D3),
        child: Center(
          child: Container(child: Text(widget.optionText)),
        ),
      ),
    ));
  }
}
