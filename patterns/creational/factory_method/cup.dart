import 'vessel.dart';
import 'volume.dart';

class Cup extends Vessel {
  final Volume volume;

  Cup(int q, String u) : volume = Volume(q, u);
  String toString() => "a $volume cup full of $liquid";
}
