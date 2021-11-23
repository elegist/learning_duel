import 'package:flutter/material.dart';
import 'card.dart';

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
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('Learning Duel'), //hallo Test
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: new Text("Message"),
                    content: new Text("Content"),
                    actions: <Widget>[
                      new TextButton(onPressed: (){Navigator.of(context).pop();}, child: new Text("close"))
                    ]
                  );
                }
              );
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyCard(question: "What is 1+1",),
                  MyCard(question: "Test",)
                ],
              ),
            )
          )
        ),
      );
  }
}