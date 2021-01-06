import 'shape.dart';

class Rectangle implements Shape {
  int height;
  int width;
  int x;
  int y;

  int _hashCode;
  bool isClone = false;
  String get cloneStatus => isClone ? "is a clone" : "is an original gangster";

  Rectangle(this.height, this.width, this.x, this.y);

  Rectangle.fromSource(Rectangle source) {
    height = source.height;
    width = source.width;
    x = source.x;
    y = source.y;
    _hashCode = source.hashCode;
    isClone = true;
  }

  @override
  Rectangle clone() {
    return Rectangle.fromSource(this);
  }

  @override
  int get hashCode {
    if (_hashCode != null) return _hashCode;
    _hashCode = DateTime.now().millisecondsSinceEpoch;
    return _hashCode;
  }

  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    Rectangle rect = other;
    return rect.isClone && rect.hashCode == hashCode;
  }
}
