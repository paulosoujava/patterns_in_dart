import 'state.dart';
import 'stateful.dart';
import 'status_on.dart';

class StatusOff implements State {
  handler(Stateful context) {
    print("  Handler of StatusOff is being called!");
    context.state = StatusOn();
  }

  @override
  String toString() {
    return "off";
  }
}
