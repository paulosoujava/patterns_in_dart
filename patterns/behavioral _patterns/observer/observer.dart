import 'notification.dart';

class Observer {
  String name;

  Observer(this.name);

  void notify(Notification notification) {
    print("[${notification.timestamp.toIso8601String()}] Hey $name, ${notification.message}!");
  }
}
