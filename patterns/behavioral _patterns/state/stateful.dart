import 'state.dart';

class Stateful {
  State _state;

  Stateful(this._state);

  State get state => _state;
  set state(State newState) => _state = newState;

  void touch() {
    print("  Touching the Stateful...");
    _state.handler(this);
  }
}
