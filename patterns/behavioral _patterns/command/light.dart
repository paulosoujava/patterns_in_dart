import 'receiver.dart';

class Light implements Receiver {
  void turnOff() => print("Light off!");
  void turnOn() => print("Light on!");
  Set<String> get actions => Set.from(["off", "on"]);
}
