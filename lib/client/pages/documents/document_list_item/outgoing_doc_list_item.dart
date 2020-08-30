import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class OutgoingDocListItem extends StatelessWidget implements IDocumentListItem {
  Documents$DFSQuery$Documents$Items$OutgoingDocListItem get outgoing =>
      Documents$DFSQuery$Documents$Items$OutgoingDocListItem.fromJson(
          item.toJson());

  OutgoingDocListItem({Key key, this.item}) : super(key: key);

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
                color: Color(0xff90a4ae),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 8.0, right: 10.0),
                          child: outgoing.registrationNumber != null
                              ? Text(
                                  'Исх № ${outgoing.registrationNumber} от ${DateFormat('dd.MM.yyyy').format(outgoing.registrationDate).toString()}')
                              : null),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(child: Text('${outgoing.title}')),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text('Отправитель: '),
                              UserItem(userId: outgoing.senderId),
                            ],
                          ),
                          Text("Адресаты: ГДУ"),
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
                    backgroundColor: Color(0xff90a4ae),
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
