import 'morning_facade.dart';

void main() {
  var typicalMorning = MorningFacade();

  print("Wake up! Grab a brush and put on a little makeup...");
  print("\r\nStumble to the kitchen...");

  typicalMorning.prepareCoffee();

  print("Oh my...that smells good...");

  typicalMorning.drinkCoffee();

  print("\r\nI'm ready to attack the day!");
}
