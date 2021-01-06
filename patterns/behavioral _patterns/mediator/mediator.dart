import 'stateful.dart';

class Mediator {
  List<Stateful> _parties;
  Mediator(this._parties);
  void update(String state) {
    for (var party in _parties) {
      party.state = state;
    }
  }
}
