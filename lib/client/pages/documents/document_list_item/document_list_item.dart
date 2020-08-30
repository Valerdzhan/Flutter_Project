import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_item/document_item_connector.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class DocumentListItem extends StatelessWidget implements IDocumentListItem {
  @override
  Documents$DFSQuery$Documents$Items item;
  DocumentListItem({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return item == null
        ? Container(child: Text('Загрузка'))
        : CardCustom(
            child: ListTile(
              // leading: ExcludeSemantics(
              //   child: CircleAvatar(child: Text('БТ')),
              // ),
              title: Row(
                children: [
                  Expanded(child: Text('${item.compileTitle}')),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UserItem(
                    userId: item.editorId,
                  ),
                  Text(
                    DateFormat('dd.MM.yyyy').format(item.whenEdited).toString(),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DocumentItemPageConnector(
                      documentId: item.id,
                    ),
                  ),
                );
              },
            ),
          );
  }
}
