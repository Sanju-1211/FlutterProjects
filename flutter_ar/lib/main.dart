// @dart=2.9
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' hide Colors;
//import 'package:flutter/src/material/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ArCoreController arCoreController = ArCoreController();
  _onARCoreViewCreated(ArCoreController _arcoreController){
    arCoreController = _arcoreController;
    _addSphere(arCoreController);
  }
  _addSphere(ArCoreController _arcoreController){
    final material = ArCoreMaterial(color: Colors.deepOrange);
    final sphere = ArCoreSphere(materials: [material],radius: 0.2);
    final node = ArCoreNode(shape: sphere,position: Vector3(
      0,0,-1
    ));
    _arcoreController.addArCoreNode(node);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ArCoreView(onArCoreViewCreated: _onARCoreViewCreated,),
    );
  }
}
