import 'composite_thing.dart';
import 'leaf_thing.dart';

void main() {
  var compositeParent = CompositeThing("Cat in the Hat");
  var compositeChild1 = CompositeThing("Thing 1");
  var compositeChild2 = CompositeThing("Thing 2");

  var leaf1_1 = LeafThing("Frustrate fish");
  var leaf1_2 = LeafThing("Knock down vases");
  var leaf2_1 = LeafThing("Ruin mom's dress");
  var leaf2_2 = LeafThing("Clean up");

  compositeChild1.addChild(leaf1_1);
  compositeChild1.addChild(leaf1_2);

  compositeChild2.addChild(leaf2_1);
  compositeChild2.addChild(leaf2_2);

  compositeParent.addChild(compositeChild1);
  compositeParent.addChild(compositeChild2);

  compositeParent.doSomething();
}
