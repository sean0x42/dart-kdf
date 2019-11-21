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

  // Parse each sub-file
  for (ArchiveFile file in archive) {
    switch (file.name) {
      case 'content.json':
        parseContent(file);
        break;
      case 'styles.json':
        parseStyles(file);
        break;
      case 'metadata.json':
        parseMetadata(file);
        break;
      case 'colours.json':
        parseColours(file);
        break;
      case 'dictionary.json':
        parseDictionary(file);
        break;
      default:
        stderr.writeln("Unknown file found in archive: ${file.name}");
    }
  }

  stdout.writeln(archive);
  return Document();
}

Future<> parseContent(ArchiveFile file) {

}

Future<> parseStyles(ArchiveFile file) {

}

Future<> parseMetadata(ArchiveFile file) {

}

/// Parse colours.json [file]
Future<Color[]> parseColours(ArchiveFile file) {

}

/// Parse dictionary.json [file]
Future<String[]> parseDictionary(ArchiveFile file) {

}