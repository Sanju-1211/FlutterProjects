import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }
  Color keyColor(int keyNum) {
    if(keyNum == 1){
      return Colors.red;
    }
    else if(keyNum == 2){
      return Colors.orange;
    }
    else if(keyNum == 3){
      return Colors.yellow;
    }
    else if(keyNum == 4) {
      return Colors.green;
    }
    else if(keyNum == 5) {
      return Colors.blue;
    }
    else if(keyNum == 6) {
      return Colors.indigo;
    }
    else {
      return Colors.purple;
    }
  }

  Expanded buildKey(int keyNum) {
   return Expanded(
     child: FlatButton(
       color: keyColor(keyNum),
       onPressed: () {
         final player = AudioPlayer();
         playSound(keyNum);
       },
     ),
   );
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1),
            buildKey(2),
            buildKey(3),
            buildKey(4),
            buildKey(5),
            buildKey(6),
            buildKey(7),
          ],
        ),
      ),
    );
  }
}
