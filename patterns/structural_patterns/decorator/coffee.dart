import 'beverage.dart';
import 'ingredient.dart';

var coffee = Ingredient("coffee", .25);
var milk = Ingredient("milk", .5);
var sugar = Ingredient("sugar", .1);

class Coffee implements Beverage {
  Set<Ingredient> _ingredients = Set.from([coffee, milk, sugar]);
  double get cost => _ingredients.fold(0, (total, i) => total + i.cost);
  String get ingredients {
    var stringIngredients = _ingredients.fold("", (str, i) => str + "${i.name}, ");
    var trimmedString = stringIngredients.substring(0, stringIngredients.length - 2);
    var lastComma = trimmedString.lastIndexOf(",");
    var replacement = ",".allMatches(trimmedString).length > 1 ? ", and" : " and";

    return trimmedString.replaceRange(lastComma, lastComma + 1, replacement);
  }
}
