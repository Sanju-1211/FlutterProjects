import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {

  final Color colour;
  final Widget childCard;

  reusableCard({this.colour, this.childCard});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      height: 200,
      width: 175,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}