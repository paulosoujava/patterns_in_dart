import 'body.dart';
import 'body_part_prod_visitor.dart';
import 'body_part_stitch_visitor.dart';

void main() {
  var body = Body();
  body.accept(BodyPartStitchVisitor());
  body.accept(BodyPartProdVisitor());
}
