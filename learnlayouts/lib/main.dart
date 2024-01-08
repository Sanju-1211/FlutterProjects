import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style:
                    TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    'Kandersteg,Switzerland'
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('1259'),
        ],
      ),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children :[
        Column(
          children: [
            Icon(
                Icons.call,
              color: Colors.blue
            ),
            Text ('Call')
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.near_me,
              color: Colors.blue
            ),
            Text ('Route')

          ],
        ),
        Column(
          children: [
            Icon(
              Icons.share,
              color: Colors.blue,
            ),
            Text ('Share')
          ],
        )
      ]
    );

    Widget textSection =Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
          ),
    );


    return MaterialApp(
      title: 'layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('camping'),
        ),
        body: ListView(
            children:[
              titleSection,
              buttonSection,
              textSection
            ]
        ),
      ),
    );
  }
}