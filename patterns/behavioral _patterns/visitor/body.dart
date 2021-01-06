import 'body_part.dart';
import 'body_part_visitor.dart';
import 'face.dart';
import 'finger.dart';
import 'foot.dart';

class Body implements BodyPart {
  String name = "Body";
  List<BodyPart> bodyParts;

  Body() {
    bodyParts = List.from([Face(), Finger("Index Finger"), Finger("Thumb"), Foot("Left Foot"), Foot("Right Foot"), Foot("Third Foot?")]);
  }

  @override
  void accept(BodyPartVisitor visitor) {
    for (var bodyPart in bodyParts) {
      bodyPart.accept(visitor);
    }
    visitor.visit(this);
  }
}
