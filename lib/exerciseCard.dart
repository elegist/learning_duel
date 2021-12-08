import 'package:flutter/material.dart';

class ExerciseCard extends StatefulWidget {
  ExerciseCard({Key? key, this.question, this.options}) : super(key: key);
  final question;
  final options;

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  bool isSelected = false;
  bool isPlayed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            onPanUpdate: (details) {
              setState(() {
                if (details.delta.dy < 0) {
                  isPlayed = true;
                }
              });
            },
            child: Container(
              padding: EdgeInsets.all(5.0),
              width: isSelected ? 150 : 100,
              height: isSelected ? 200 : 150,
              color: !isPlayed ? Color(0xFFD3D3D3) : Colors.redAccent,
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
                    Row(
                      children: [
                        if (isSelected)
                          Expanded(child: Text(widget.options[0])),
                        if (isSelected) Expanded(child: Text(widget.options[1]))
                      ],
                    ),
                    Row(
                      children: [
                        if (isSelected)
                          Expanded(child: Text(widget.options[2])),
                        if (isSelected) Expanded(child: Text(widget.options[3]))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
