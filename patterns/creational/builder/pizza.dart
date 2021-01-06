import 'pizza_builder.dart';

class Pizza {
  String _crust;
  int _diameter;
  Set<String> _toppings;

  Pizza(PizzaBuilder builder) {
    _crust = builder.crust;
    _diameter = builder.diameter;
    _toppings = builder.toppings;
  }

  String get crust => _crust;
  int get diameter => _diameter;
  String get toppings => _stringifiedToppings();
  String _stringifiedToppings() {
    var stringToppings = _toppings.join(", ");
    var lastComma = stringToppings.lastIndexOf(",");
    var replacement = ",".allMatches(stringToppings).length > 1 ? ", and" : " and";

    return stringToppings.replaceRange(lastComma, lastComma + 1, replacement);
  }

  @override
  String toString() {
    return "A delicous $_diameter\" pizza with $_crust crust covered in $toppings";
  }
}
