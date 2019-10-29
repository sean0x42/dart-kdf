import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:xml/xml.dart' as xml;

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

  // Find content.xml and parse
  ArchiveFile archivedContent = archive.findFile('content.xml');
  var document = xml.parse(String.fromCharCodes(archivedContent.content));
  print(document.toXmlString(pretty: true, indent: '  '));

  // Encode with gzip and print
  List<int> compressed = gzip.encode(archivedContent.content);
  print("\nGzipped:");
  print(String.fromCharCodes(compressed));

  return Document();
}
