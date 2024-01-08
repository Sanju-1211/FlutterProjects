import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}
var leftDiceNumber = 1;
var rightDiceNumber = 1;

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.purple[200],
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ]
          ),
        ),

      )
    );
  }
}
