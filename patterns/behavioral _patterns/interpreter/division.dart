import 'expression.dart';
import 'number.dart';

class Division implements Expression {
  Number number;
  Division(this.number);
  void interpret(int value) {
    print("Division $value...");
    number.value ~/= value;
  }
}
