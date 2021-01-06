import 'log_level.dart';
import 'logger.dart';

class FileLogger extends Logger {
  FileLogger(Set<LogLevel> levels) : super(levels);
  void write_message(String msg) => print("[File]: $msg");
}
