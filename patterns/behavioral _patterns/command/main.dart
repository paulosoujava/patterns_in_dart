import 'light.dart';
import 'light_switch.dart';

void main() {
  var myFavoriteLamp = Light();
  var iotLightSwitch = LightSwitch(myFavoriteLamp);

  iotLightSwitch.perform("on");
  iotLightSwitch.perform("off");
  iotLightSwitch.perform("blink");
  iotLightSwitch.perform("on");

  print("\r\n*** Fancy IoT Switch Logs ***\r\n${iotLightSwitch.history}");
}
