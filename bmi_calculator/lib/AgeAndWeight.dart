import 'package:flutter/material.dart';

class ageAndWeight extends StatefulWidget {

  final String Heading;
  ageAndWeight({this.Heading});

  @override
  State<ageAndWeight> createState() => _ageAndWeightState();
}


class _ageAndWeightState extends State<ageAndWeight> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(widget.Heading),
        Text('26', style: TextStyle(fontSize: 45),),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_circle, size: 45,),
            SizedBox(width: 50),
            Icon(Icons.remove_circle, size: 45,),
          ],
        ),
      ],
    );
  }
}
