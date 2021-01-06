import 'thing.dart';

class CompositeThing implements Thing {
  String name;
  Set<Thing> _childThings = Set();

  CompositeThing(this.name);

  void addChild(Thing child) {
    _childThings.add(child);
  }

  void doSomething() {
    print("\r\n** $name is doing something! ** \r\n");
    _childThings.forEach((thing) => thing.doSomething());
    print("\r\n** $name is all done. ** \r\n");
  }
}
