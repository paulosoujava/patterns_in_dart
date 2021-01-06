import 'notification.dart';
import 'observer.dart';

class Observable {
  List<Observer> _observers;

  Observable([List<Observer> observers]) {
    _observers = observers ?? [];
  }

  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  void notify_observers(Notification notification) {
    for (var observer in _observers) {
      observer.notify(notification);
    }
  }
}
