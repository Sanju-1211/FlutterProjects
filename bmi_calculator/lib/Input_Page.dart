  import 'package:flutter/material.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'ReusableCard.dart';
  import 'GenderPick.dart';
  import 'BMIslider.dart';
  import 'AgeAndWeight.dart';

  const buttonColour = Color(0xFF1D1E33);

  class InputPage extends StatefulWidget {
    @override
    _InputPageState createState() => _InputPageState();
  }

  class _InputPageState extends State<InputPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column (
            children: <Widget> [
              Expanded(child: Row(
                children: [
                  reusableCard(colour: buttonColour, childCard: GenderIcon(genderIcon:Icon(FontAwesomeIcons.mars,size:50.0),genderText:'MALE')),
                  reusableCard(colour: buttonColour, childCard: GenderIcon(genderIcon:Icon(FontAwesomeIcons.venus,size:50.0),genderText:'FEMALE')),
                ],
              )

              ),
              Expanded(child: Row(
                children: <Widget> [
                  Expanded(
                      child: reusableCard(colour: buttonColour, childCard: BMISlider()),
                  ),
                ],
              )),
              Expanded(child: Row(
                  children: [
                    reusableCard(colour: buttonColour, childCard: ageAndWeight(Heading: 'AGE')),
                    reusableCard(colour: buttonColour, childCard: ageAndWeight(Heading: 'WEIGHT')),
                  ]
                )
              ),
              Container(
                color: Colors.pink,
                margin:EdgeInsets.only(top: 10),
                height: 75,
                width: double.infinity,
              )
            ],
        ),
      );
    }
  }



