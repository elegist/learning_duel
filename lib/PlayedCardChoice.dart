import 'package:flutter/material.dart';

class PlayedCardChoice extends StatefulWidget {
  /*
  PlayedCardChoice({Key? key, this.question, this.options, this.optionStates})
      : super(key: key);
      */
  late String question;
  late List<String> options;
  late List<bool> optionStates;
  late List<Option> optionWidgets;

  PlayedCardChoice(String question, List<String> options, List<bool> optionStates){
    this.question = question;
    this.options = options;
    this.optionStates = optionStates;
    optionWidgets = List<Option>.filled(4, new Option(isCorrect: false, optionText: '',));

    for(var i=0; i<options.length; i++){
      optionWidgets[i] = Option(optionText: options[i], isCorrect: optionStates[i],);
    }
  }

  @override
  State<PlayedCardChoice> createState() => _PlayedCardChoiceState();

  void clickedOption(){
    for(var i = 0; i < optionWidgets.length; i++){
      if(optionWidgets[i].isSelected){
        if(optionWidgets[i].isCorrect){
          optionWidgets[i].optionColor = Colors.green;
        }else{
          optionWidgets[i].optionColor = Colors.red;
        }
      }
    }
  }
}

class _PlayedCardChoiceState extends State<PlayedCardChoice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
            child: Column(
          children: [
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
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              widget.optionWidgets[0],
              widget.optionWidgets[1]
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              widget.optionWidgets[2],
              widget.optionWidgets[3]
            ]),
          ],
        )));
  }
}

class Option extends StatefulWidget {
  Option({Key? key, this.optionText, this.isCorrect}) : super(key: key);

  final optionText;
  final isCorrect;
  bool isSelected = false;
  Color optionColor = Color(0xFFD3D3D3);

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = true;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            width: 120,
            height: 40,
            color: widget.optionColor,
            child: Center(
              child: Container(child: Text(widget.optionText)),
            ),
          ),
        ));
  }
}
