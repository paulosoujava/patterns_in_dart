import 'adapter.dart';
import 'cons.dart';

void main() {
  var adapter = Adapter();
  var result = adapter.call();

  assert(result == adapteeMessage);
}
