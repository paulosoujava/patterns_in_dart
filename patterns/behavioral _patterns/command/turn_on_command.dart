import 'command.dart';
import 'light.dart';

class TurnOnCommand extends Command {
  String name = "Turn on";
  TurnOnCommand(Light light) : super(light);
  void execute() {
    (receiver as Light).turnOn();
  }
}
