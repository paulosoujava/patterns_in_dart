import 'body.dart';
import 'body_part.dart';
import 'body_part_visitor.dart';
import 'face.dart';
import 'finger.dart';
import 'foot.dart';

class BodyPartStitchVisitor implements BodyPartVisitor {
  void visit(BodyPart bodyPart) {
    if (bodyPart is Body) {
      print("Reanimating my ${bodyPart.name}.");
    }
    if (bodyPart is Face) {
      print("Stitching together my ${bodyPart.name}.");
    }
    if (bodyPart is Finger) {
      print("Stitching together my ${bodyPart.name}.");
    }
    if (bodyPart is Foot) {
      print("Gluing on my ${bodyPart.name}.");
    }
  }
}
