import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.red[100],
       body: SafeArea(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             CircleAvatar(
               radius: 50.0,
               backgroundImage: AssetImage('Images/Sanju.jpeg'),
             ),
             Text(
               'Sanju',
               style: TextStyle(
                 fontFamily: 'DancingScript',
                 fontSize: 40.0,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
             ),
             Text(
               'Flutter Learner',
               style: TextStyle(
                 fontFamily: 'SourceSansPro',
                 fontSize: 20.0,
                 color: Colors.blueGrey[800],
                 letterSpacing: 2.5,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(
               height: 20.0,
               width: 200.0,
               child: Divider(
                 color: Colors.red[600],
               ),
             ),
             Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
               child: ListTile(
                 leading: Icon(
                   Icons.phone,
                   color: Colors.red[200],
                 ),
                 title:Text(
                   '+91 7548735676',
                   style: TextStyle(
                     fontFamily: 'SourceSansPro',
                     fontSize: 20.0,
                     color: Colors.blueGrey[800],

                   ),
                 ),
               )
             ),
             Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
               child: ListTile(
                 leading: Icon(
                   Icons.email,
                   color: Colors.red[200],
                 ),
                 title: Text(
                   'sanju@email.com',
                   style: TextStyle(
                     fontFamily: 'SourceSansPro',
                     fontSize: 20.0,
                     color: Colors.blueGrey[800],
                   ),
                 ),
               )
             )
           ],
        )
       ),
      ),
    );
  }
}

