import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_item.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class GenericRequestListItem extends StatelessWidget implements IDocumentItem {
  Documents$DFSQuery$Documents$Items$GenericRequestListItem
      get genericRequest =>
          Documents$DFSQuery$Documents$Items$GenericRequestListItem.fromJson(
              item.toJson());

  GenericRequestListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return item != null
        ? Container(child: Text('${genericRequest.documentType}'))
        : Container(child: Text('Загрузка'));
  }

  @override
  Documents$DFSQuery$Documents$Items item;
}
