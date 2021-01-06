import 'add.dart';
import 'division.dart';
import 'number.dart';
import 'subtract.dart';

void main() {
  var number = Number(0);
  var adder = Add(number);
  var subtracter = Subtract(number);
  var divide = Division(number);

  adder.interpret(100);
  subtracter.interpret(60);
  adder.interpret(2);
  divide.interpret(2);
  assert(number.value == 42);
  print("And the result is ${number.value}!");
}
