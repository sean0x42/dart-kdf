import 'package:kdf/src/node.dart';

abstract class Element extends Node {
  List<Node> children = [];
  String clazz;
}
