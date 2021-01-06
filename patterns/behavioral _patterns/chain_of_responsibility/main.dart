import 'protocols.dart';

void main() {
  var logger = ConsoleLogger(Set.from(LogLevel.values));

  var eLog = EmailLogger(Set.from([LogLevel.Warning]));

  var fLog = FileLogger(Set.from([LogLevel.Warning, LogLevel.Error]));

  var last = EmailLogger(Set.from([LogLevel.Warning, LogLevel.Error]));

  logger.next = eLog;
  eLog.next = fLog;
  fLog.next = last;

  logger.log(LogLevel.Warning, "Todos registrados em Warning irao exibir o log");
  //logger.log(LogLevel.Info, "this is a log level in info");

  //logger.log(LogLevel.Warning, "this is a log level in  warning!");
  // logger.log(LogLevel.Error, "this is a log level in debug Error!");

  logger.log(LogLevel.FunctionalError, "Tthis is a log level in FunctionalError");
  // logger.log(LogLevel.FunctionalMessage, "this is a log level in FunctionalMessage");
}
