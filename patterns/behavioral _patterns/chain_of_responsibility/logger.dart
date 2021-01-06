import 'log_level.dart';

abstract class Logger {
  Set<LogLevel> levels;
  Logger _next;

  Logger(this.levels);

  bool get universal => levels.containsAll(LogLevel.values);
  void set next(Logger nextLogger) => _next = nextLogger;

  void addLevel(LogLevel level) => levels.add(level);

  void log(LogLevel level, String msg) {
    if (levels.contains(level) || universal) {
      write_message(msg);
    }
    _next?.log(level, msg);
  }

  void write_message(String msg);
}
