import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_item/document_item_connector.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class GenericRequestListItem extends StatelessWidget
    implements IDocumentListItem {
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
    return item == null
        ? Container(child: Text('Загрузка'))
        : Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.white,
              child: CardCustom(
                color: Color(0xff81c784),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8.0, right: 10.0),
                        child: Row(
                          children: [
                            Expanded(child: Text('')),
                            Text("На согласовании"),
                            // Text(genericRequest.documentStatusDescription),
                          ],
                        ),
                      ),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                              child: Text('${genericRequest.compileTitle}')),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text('Адресат: '),
                              Expanded(
                                  child: UserItem(
                                      userId: genericRequest.addressee)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Ответственный: '),
                              Expanded(
                                  child: UserItem(
                                      userId: genericRequest.responderId)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Куратор: '),
                              Expanded(
                                  child: UserItem(
                                      userId: genericRequest.curatorId)),
                            ],
                          ),
                          // Text(
                          //   DateFormat('dd.MM.yyyy')
                          //       .format(genericRequest.whenEdited)
                          //       .toString(),
                          // ),
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
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                color: Colors.white,
                iconWidget: ExcludeSemantics(
                  child: CircleAvatar(
                    child: Text('ЗР'),
                    backgroundColor: Color(0xff81c784),
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
