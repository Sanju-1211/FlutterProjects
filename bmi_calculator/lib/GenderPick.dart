import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final Icon genderIcon;
  final String genderText;
  GenderIcon({this.genderIcon, this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        SizedBox(height: 10),
        Text(genderText),
      ],
    );
  }
}