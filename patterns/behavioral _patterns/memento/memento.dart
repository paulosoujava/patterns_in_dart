class Memento {
  String _state;

  Memento(String s) {
    _state = s;
    print("[Memento] State \"$s\" has been saved!");
  }

  String get state {
    print("[Memento] Providing saved state \"$_state\"...");
    return _state;
  }
}
