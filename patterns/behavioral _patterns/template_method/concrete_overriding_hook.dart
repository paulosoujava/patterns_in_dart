import 'abstract.dart';

class ConcreteOverridingHook extends Abstract {
  String abstractMethod() => "So, so boring...";
  @override
  String hookMethod() => "I'm an overriden hook method!";
}
