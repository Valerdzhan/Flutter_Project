import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/multi_user.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class IncomingDocListItem extends StatelessWidget implements IDocumentListItem {
  Documents$DFSQuery$Documents$Items$IncomingDocListItem get incomingDoc =>
      Documents$DFSQuery$Documents$Items$IncomingDocListItem.fromJson(
          item.toJson());

  IncomingDocListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return item == null
        ? Container(child: Text('Загрузка'))
        : Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.white,
              child: CardCustom(
                color: Color(0xff2196f3),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8.0, right: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: incomingDoc.senderOutgoingNumber != null
                                    ? Text(
                                        'Исх № ${incomingDoc.senderOutgoingNumber} от ${DateFormat('dd.MM.yyyy').format(incomingDoc.documentDate).toString()}')
                                    : null),
                            if (incomingDoc.registrationNumber != null)
                              Text(
                                  'Вх № ${incomingDoc.registrationNumber} от ${DateFormat('dd.MM.yyyy').format(incomingDoc.registrationDate).toString()}'),
                          ],
                        ),
                      ),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(child: Text('${incomingDoc.title}')),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Отправитель: ${incomingDoc.sender}'),
                          Row(
                            children: [
                              Text('Адресаты: '),
                              MultiUserItem(
                                  userIds: incomingDoc.incomingDocAddresseeId),
                            ],
                          )
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
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                color: Colors.white,
                iconWidget: ExcludeSemantics(
                  child: CircleAvatar(
                    child: Text('ИД'),
                    backgroundColor: Color(0xff2196f3),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
            // secondaryActions: <Widget>[
            //   IconSlideAction(
            //     caption: 'More',
            //     color: Colors.black45,
            //     icon: Icons.more_horiz,
            //   ),
            //   IconSlideAction(
            //     caption: 'Delete',
            //     color: Colors.red,
            //     icon: Icons.delete,
            //   ),
            // ],
          );
  }

  @override
  Documents$DFSQuery$Documents$Items item;
}
