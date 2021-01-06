import 'grinder.dart';
import 'imbiber.dart';
import 'maker.dart';

class MorningFacade {
  final _coffeeDrinker = Imbiber("coffee");
  final _coffeeGrinder = Grinder("coffee beans");
  final _coffeeMaker = Maker("coffee");

  void prepareCoffee() {
    print("\r\nPreparing the coffee...");
    _coffeeGrinder.grind();
    _coffeeMaker
      ..fill()
      ..start();
    print("Coffee is brewing!\r\n");
  }

  void drinkCoffee() {
    print("\r\nMust...have...coffee...");
    _coffeeMaker.retrieve();
    _coffeeDrinker.drink();
    print("This is damn fine coffee!");
  }
}
