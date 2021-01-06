import 'beverage.dart';
import 'coffee.dart';

class StarbucksCoffeeDecorator implements Beverage {
  Beverage _coffee = Coffee();
  double get cost => _coffee.cost * 5;
  String get ingredients => _coffee.ingredients;
}
