import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_item.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class IncomingDocListItem extends StatelessWidget implements IDocumentItem {
  Documents$DFSQuery$Documents$Items$IncomingDocListItem get incomingDoc =>
      Documents$DFSQuery$Documents$Items$IncomingDocListItem.fromJson(
          item.toJson());

  IncomingDocListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return item != null
        ? Container(child: Text('${incomingDoc.documentType}'))
        : Container(child: Text('Загрузка'));
  }

  @override
  Documents$DFSQuery$Documents$Items item;
}
