import 'body_part_visitor.dart';

abstract class BodyPart {
  String name;
  void accept(BodyPartVisitor visitor) => visitor.visit(this);
}
