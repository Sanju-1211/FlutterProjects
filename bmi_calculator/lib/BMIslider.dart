import 'package:flutter/material.dart';

class BMISlider extends StatefulWidget {

  @override
  State<BMISlider> createState() => _BMISliderState();
}

class _BMISliderState extends State<BMISlider> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('HEIGHT'),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('42', style: TextStyle(fontSize: 45) ),
              Text('cm', style: TextStyle(fontSize: 15)),
            ]
        ),
        Slider(
          value: _currentSliderValue,
          max: 200,
          divisions: 200,
          activeColor: Colors.pink,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}