import 'louds_peaker.dart';

class LoudspeakerWithMuzak implements Loudspeaker {
  void announce(String message) => print("<soothing muzak playing> $message");
}
