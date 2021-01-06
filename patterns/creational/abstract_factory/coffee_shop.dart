import 'coffee.dart';
import 'drink_factory.dart';
import 'drinkable.dart';

class CoffeeShop implements DrinkFactory {
  Drinkable createDrink() {
    return Coffee();
  }
}
