import 'americano_strategy.dart';
import 'conffee_drinker.dart';
import 'drip_strategy.dart';
import 'mocha_frappuccino_strategy.dart';

void main() {
  var americano = AmericanoStrategy();
  var drip = DripStrategy();
  var mocha = MochaFrappuccinoStrategy();

  var me = CoffeeDrinker("Tyler", drip);
  var europeanBuddy = CoffeeDrinker("Pieter", americano);
  var myDaughter = CoffeeDrinker("Joanie", mocha);

  final String roastOfTheDay = "Italian";

  for (var person in [me, europeanBuddy, myDaughter]) {
    print("Hey ${person.name}, whatcha drinkin' over there?");
    print("I'm enjoying ${person.preferredDrink.announce(roastOfTheDay)}!\r\n");
  }
}
