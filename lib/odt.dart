import 'dart:io';

import 'package:archive/archive_io.dart';

import 'package:kdf/src/document.dart';

/// Parses the ODT file at [path] and converts it to KDF.
///
/// ```
/// odt2kdf('~/Documents/Document.odt')
/// ```
Future<Document> parseODT(String path) async {
  // Read the archive from disk
  List<int> bytes = File(path).readAsBytesSync();

  // Decode zip
  Archive archive = ZipDecoder().decodeBytes(bytes);

  ArchiveFile archivedContent = archive.findFile('content.xml');
  String xmlContent = String.fromCharCodes(archivedContent.content);
  print(xmlContent);

  return Document();
}
