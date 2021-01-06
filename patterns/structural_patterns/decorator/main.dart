import 'coffee.dart';
import 'starbucks_coffee_decorator.dart';

void main() {
  var coffee = Coffee();
  var starbucksCoffee = StarbucksCoffeeDecorator();

  print("Coffee contains ${coffee.ingredients}. It costs \$${coffee.cost}");
  print("Starbucks coffee contains ${starbucksCoffee.ingredients}. It costs \$${starbucksCoffee.cost}");
}
