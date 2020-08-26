import 'package:flutter/material.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class DocumentListItemInterfaceCollection extends Documents$DFSQuery$Documents {
  DocumentListItemInterfaceCollection({
    Key key,
    this.count = 0,
    this.items,
  }) : super();

  int count;

  List<Documents$DFSQuery$Documents$Items> items;

  factory DocumentListItemInterfaceCollection.fromUserTask(
      Documents$DFSQuery$Documents documents) {
    return DocumentListItemInterfaceCollection()
      ..count = documents.count
      ..items = documents.items;
  }

  factory DocumentListItemInterfaceCollection.fromJson(
      Map<String, dynamic> json) {
    var documents = Documents$DFSQuery$Documents.fromJson(json);
    return DocumentListItemInterfaceCollection.fromUserTask(documents);
  }
}
