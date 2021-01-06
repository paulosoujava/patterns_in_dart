import 'number.dart';

abstract class Expression {
  Number number;
  void interpret(int value);
}
