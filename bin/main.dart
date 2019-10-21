import 'dart:io';

import 'package:args/args.dart';
import 'package:kdf/odt.dart';

main(List<String> arguments) {
  exitCode = 0;

  // Init parser
  final parser = ArgParser();
  ArgResults argResults = parser.parse(arguments);

  // Get paths
  final paths = argResults.rest;

  try {
    odt2kdf(paths);
  } on String catch (e) {
    stderr.writeln(e);
    exitCode = 2;
  }
}

odt2kdf(List<String> paths) {
  // Handle no paths
  if (paths.isEmpty) {
    throw "No path provided";
  }

  parseODT(paths[0]);
}
