import 'bucket.dart';
import 'cup.dart';
import 'tiredness.dart';
import 'vessel.dart';

class CoffeeVesselFactory {
  static Vessel vesselFor(Tiredness howTired) {
    Vessel vessel;
    switch (howTired) {
      case Tiredness.rested:
        vessel = Cup(100, "milliliter");
        break;
      case Tiredness.sleepy:
      case Tiredness.barelyAlive:
        vessel = Cup(500, "milliliter");
        break;
      case Tiredness.hasChildren:
        vessel = Bucket(5, "liter");
        break;
      default:
        vessel = Cup(200, "milliliter");
        break;
    }
    vessel.liquid = "coffee";
    return vessel;
  }
}
