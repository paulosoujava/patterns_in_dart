import 'louds_peaker.dart';
import 'louds_peaker_with_muzak.dart';

abstract class Factory {
  Loudspeaker loudspeaker = LoudspeakerWithMuzak();
  void announce(String message) => loudspeaker.announce(message);
}
