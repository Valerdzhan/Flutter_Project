import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class LNAListItem extends StatelessWidget implements IDocumentListItem {
  Documents$DFSQuery$Documents$Items$LNAListItem get lnaDoc =>
      Documents$DFSQuery$Documents$Items$LNAListItem.fromJson(item.toJson());

  LNAListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    String regnum(docItem) {
      return docItem.registrationBookItem != null
          ? '№ ${docItem.registrationBookItem.number} от ${DateFormat('dd.MM.yyyy').format(docItem.registrationBookItem.date).toString()}'
          : '';
    }

    return item == null
        ? Container(child: Text('Загрузка'))
        : Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.white,
              child: CardCustom(
                color: Color(0xffa00000),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8.0, right: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(regnum(lnaDoc)),
                            ),
                            // Text(lnaDoc.documentStatusDescription),
                            Text('На согласовании'),
                          ],
                        ),
                      ),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(child: Text('${lnaDoc.title}')),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(lnaDoc.placeOfRegistrationValue),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Отправитель: "),
                              UserItem(userId: lnaDoc.signerId),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Адресат: "),
                              UserItem(userId: lnaDoc.actorId),
                            ],
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
                    child: Text('ОРД'),
                    backgroundColor: Color(0xffa00000),
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
