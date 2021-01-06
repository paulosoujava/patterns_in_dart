import 'adaptee.dart';
import 'target.dart';

class Adapter implements Target {
  String call() {
    var adaptee = Adaptee();
    print('Adapter#call is being called');

    return adaptee.method();
  }
}
