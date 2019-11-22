import 'dart:io';
import 'package:kdf/kdf.dart';

/// Export a KDF document to PDF
main(List<String> args) {
  exitCode = 0;
  Document document = parseKDF('/home/sean0x42/Documents/kdf/test/doc.kdf');
  stdout.writeln(document);
}
