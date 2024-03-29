import 'package:objectboxdemo1/objectbox.g.dart';

class ObjectBox {
  //let's declare our store
  late final Store store;

  ObjectBox._create(this.store) {}

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }
}