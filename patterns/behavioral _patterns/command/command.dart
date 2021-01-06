import 'receiver.dart';

abstract class Command {
  Receiver receiver;
  String name;

  Command(this.receiver);

  @override
  String toString() => this.name;

  void execute();
}
