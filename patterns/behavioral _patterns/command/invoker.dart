import 'command.dart';

class Invoker {
  List<String> history = [];
  void execute(Command cmd) {
    cmd.execute();
    history.add("[${DateTime.now()}] Executed $cmd");
  }

  @override
  String toString() => history.fold("", (events, event) => events + "$event\r\n");
}
