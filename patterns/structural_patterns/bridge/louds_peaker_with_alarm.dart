import 'louds_peaker.dart';

class LoudspeakerWithAlarm implements Loudspeaker {
  void announce(String message) => print("<BOO-OP BOO-OP> $message <BOO-OP>");
}
