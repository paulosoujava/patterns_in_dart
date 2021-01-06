import 'vessel.dart';
import 'volume.dart';

class Bucket extends Vessel {
  final Volume volume;

  Bucket(int q, String u) : volume = Volume(q, u);
  String toString() => "a $volume bucket full of $liquid";
}
