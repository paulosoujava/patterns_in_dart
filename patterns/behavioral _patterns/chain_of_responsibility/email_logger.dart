import 'log_level.dart';
import 'logger.dart';

class EmailLogger extends Logger {
  EmailLogger(Set<LogLevel> levels) : super(levels);
  void write_message(String msg) => print("[Email]: $msg");
}
