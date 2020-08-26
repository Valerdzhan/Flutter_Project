import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_item.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class OutgoingDocListItem extends StatelessWidget implements IDocumentItem {
  Documents$DFSQuery$Documents$Items$OutgoingDocListItem get outgoing =>
      Documents$DFSQuery$Documents$Items$OutgoingDocListItem.fromJson(
          item.toJson());

  OutgoingDocListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return item != null
        ? Container(child: Text('${outgoing.documentType}'))
        : Container(child: Text('Загрузка'));
  }

  @override
  Documents$DFSQuery$Documents$Items item;
}
