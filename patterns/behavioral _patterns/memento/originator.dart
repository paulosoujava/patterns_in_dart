import 'memento.dart';

class Originator {
  String _state;

  // NOTE: This uses the state setter on init to get a handy print
  Originator(String s) {
    state = s;
  }

  String get state => _state;
  void set state(String newState) {
    _state = newState;
    print("[Originator] Set state to $newState");
  }

  Memento saveToMemento() {
    print("[Originator] Saving to memento...");
    return Memento(state);
  }

  void restoreFromMemento(Memento m) {
    print("[Originator] Restoring from memento...");
    _state = m.state;
    print("[Originator] Restored to $state.");
  }
}
