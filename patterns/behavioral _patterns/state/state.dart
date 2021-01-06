import 'stateful.dart';

abstract class State {
  void handler(Stateful context);
  String toString();
}
