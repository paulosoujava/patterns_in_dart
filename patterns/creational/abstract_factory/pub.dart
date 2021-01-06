import 'beer.dart';
import 'drink_factory.dart';
import 'drinkable.dart';

class Pub implements DrinkFactory {
  Drinkable createDrink() {
    return Beer();
  }
}
