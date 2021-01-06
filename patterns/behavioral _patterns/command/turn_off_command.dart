import 'command.dart';
import 'light.dart';

class TurnOffCommand extends Command {
  String name = "Turn off";
  TurnOffCommand(Light light) : super(light);
  void execute() {
    (receiver as Light).turnOff();
  }
}
