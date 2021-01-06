import 'cons.dart';

class Adaptee {
  String method() {
    print('Adaptee#method is being called');

    return adapteeMessage;
  }
}
