import 'coffee_shop.dart';
import 'drink_factory.dart';
import 'pub.dart';

void main() {
  var mood = "sleepy";
  DrinkFactory destination;

  switch (mood) {
    case "sleepy":
      destination = CoffeeShop();
      break;
    case "done":
      destination = Pub();
      break;
    default:
      print("I only have two moods...");
  }

  var myBeverage = destination.createDrink();
  myBeverage.pour();
}
