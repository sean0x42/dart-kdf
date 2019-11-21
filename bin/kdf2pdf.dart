import 'dart:io';
import 'package:logging/logging.dart';
import 'package:ansicolor/ansicolor.dart';

final logger = Logger("bin.kdf2pdf");

void onLog(record) {
  AnsiPen messagePen = AnsiPen();
  AnsiPen levelPen = AnsiPen();
  AnsiPen genericPen = AnsiPen()..gray(level: 0.75);

  // Handle possible level colours
  switch (record.level.name) {
    case 'SEVERE':
      levelPen..red(bg: true)..white();
      messagePen.red();
      break;
    case 'WARNING':
      levelPen.yellow();
      break;
    case 'INFO':
      levelPen.magenta();
      break;
  }

  var time = genericPen(record.time.toString());
  var level = levelPen("[${record.level.name}]");
  var logger = genericPen(record.loggerName);
  var message = messagePen(record.message);

  print('${time} ${level} ${logger}: ${message}');
}

/// Export a KDF document to PDF
main(List<String> args) {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(onLog);
  exitCode = 0;

  logger.info("Hello world");
  logger.warning("Warning warning");
  logger.severe("Fail");
  logger.shout("Shout?");
}
