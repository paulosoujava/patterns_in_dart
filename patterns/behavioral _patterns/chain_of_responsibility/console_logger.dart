import 'log_level.dart';
import 'logger.dart';

class ConsoleLogger extends Logger {
  ConsoleLogger(Set<LogLevel> levels) : super(levels);
  @override
  void write_message(String msg) => print("[Console]: $msg");
}
