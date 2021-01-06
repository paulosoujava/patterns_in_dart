import 'coffee_roaster.dart';
import 'louds_peaker_with_alarm.dart';

void main() {
  var roaster = CoffeeRoaster();
  for (var i = 0; i < 3; i++) {
    roaster.turnGasValve();
    if (roaster.isTooHot) {
      roaster.loudspeaker = LoudspeakerWithAlarm();
    }
  }
}
