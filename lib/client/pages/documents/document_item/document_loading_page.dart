import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_item/idocument_item.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

// ignore: must_be_immutable
class DocumentLoadPage extends StatelessWidget implements IDocumentItem {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Loading...'),
      ),
    );
  }

  DocumentLoadPage({Key key, this.item}) : super(key: key);

  @override
  GetDocument$DFSQuery$DocumentQueryAPI$Document item;
  bool isLoading;
  Function(String) onQuery;
  Function(String) onCreate;
  Function(int, String, bool) onUpdate;
  Function(int) onRemove;
  VoidCallback onPop;
}
