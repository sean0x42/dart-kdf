import 'package:archive/archive.dart';

import '../document.dart';
import 'dart:io';

/// Decodes a Gzip encoded Tar archive at the given [path].
Archive decodeTar(String path) {
  // Get archive bytes
  List<int> encodedBytes = File(path).readAsBytesSync();

  // Decode archive
  List<int> bytes = GZipDecoder().decodeBytes(encodedBytes);
  return TarDecoder().decodeBytes(bytes);
}

/// Parse a KDF document at the given [path].
Document parseKDF(String path) {
  Archive archive = decodeTar(path);

  stdout.writeln(archive);
  return Document();
}