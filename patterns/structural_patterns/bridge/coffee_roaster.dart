import 'factory.dart';

class CoffeeRoaster extends Factory {
  int _temp = 200;
  bool get isTooHot => _temp >= 225;

  void turnGasValve() {
    loudspeaker.announce("Increasing gas!");
    _temp += 25;
    loudspeaker.announce("Temperature is now at $_temp");
  }
}
