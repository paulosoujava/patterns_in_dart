import 'care_taker.dart';
import 'originator.dart';

void main() {
  var me = Originator("Returned from store");
  me.state = "Placing car keys down";

  var locationOfKeys = me.saveToMemento();
  var memory = CareTaker();
  memory.memento = locationOfKeys;

  me.state = "Putting away groceries";
  me.state = "Noticed missing pickles";
  me.state = "Looking for car keys...";

  me.restoreFromMemento(memory.memento);
  me.state = "Going back to store for pickles";
}
