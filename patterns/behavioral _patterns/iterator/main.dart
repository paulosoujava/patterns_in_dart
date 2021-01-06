import 'rainbow_iterator.dart';

void main() {
  var rainbowColors = RainbowIterator();
  while (rainbowColors.moveNext()) {
    print(rainbowColors.current);
  }
}
