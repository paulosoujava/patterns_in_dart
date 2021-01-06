import 'concrete.dart';
import 'concrete_overriding_hook.dart';

void main() {
  var con1 = Concrete();
  var con2 = ConcreteOverridingHook();
  con1.templateMethod();
  con2.templateMethod();
}
