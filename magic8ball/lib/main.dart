import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(Magic_8_ball());
}

class Magic_8_ball extends StatefulWidget {
  @override
  State<Magic_8_ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic_8_ball> {
  var magic8ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.green[100],
          ),
          body: Center(
            child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          magic8ball = Random().nextInt(5) + 1;
                        });
                      },
                      child: Image.asset('images/ball$magic8ball.png'),
                    ),
                  ),
                ]
            ),
          ),

        )
    );
  }
}
