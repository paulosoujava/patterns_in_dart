class RainbowIterator implements Iterator {
  var _colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"];
  var _index = 0;
  String get current => _colors[_index++];
  bool moveNext() => _index < _colors.length;
}
