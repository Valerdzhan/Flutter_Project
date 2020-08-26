import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class DocumentListItem extends StatelessWidget implements IDocumentItem {
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
        // : Container(child: Text('${item.documentType}'));
        : ListTile(
            leading: ExcludeSemantics(
              child: CircleAvatar(child: Text('Д')),
            ),
            title: Row(
              children: [
                Expanded(child: Text('${item.compileTitle}')),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // StatusTask(
                //   task: widget.tasks.items[index],
                // ),
                UserItem(
                  userId: item.editorId,
                ),
                Text(
                  DateFormat('dd.MM.yyyy').format(item.whenEdited).toString(),
                ),
              ],
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => TaskItemPageConnector(
              //         taskId: widget.tasks.items[index].id),
              //   ),
              // );
            },
          );
  }
}
