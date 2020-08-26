import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_item.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class LNAListItem extends StatelessWidget implements IDocumentItem {
  Documents$DFSQuery$Documents$Items$LNAListItem get lnaDoc =>
      Documents$DFSQuery$Documents$Items$LNAListItem.fromJson(item.toJson());

  LNAListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return item != null
        ? Container(child: Text('${lnaDoc.documentType}'))
        : Container(child: Text('Загрузка'));
  }

  @override
  Documents$DFSQuery$Documents$Items item;
}
