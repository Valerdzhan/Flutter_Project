import 'dart:math' as math;
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/multi_user.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class LetterListItem extends StatelessWidget implements IDocumentListItem {
  Documents$DFSQuery$Documents$Items$LetterListItem get letter =>
      Documents$DFSQuery$Documents$Items$LetterListItem.fromJson(item.toJson());

  LetterListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return letter == null
        ? Container(child: Text('Загрузка'))
        : Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.white,
              child: CardCustom(
                color: Color(0xffffb74d),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8.0, right: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: letter.registrationNumber != null
                                    ? Text(
                                        '№ ${letter.registrationNumber} от ${DateFormat('dd.MM.yyyy').format(letter.registrationDate).toString()}')
                                    : null),
                            Text("На согласовании"),
                          ],
                        ),
                      ),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(child: Text('${letter.head}')),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Text(letter.documentStatusDescription),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Отправитель: "),
                              UserItem(userId: letter.senderId),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Адресаты:       "),
                              MultiUserItem(userIds: letter.letterAddresseeId),
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
                    child: Text('СЗ'),
                    backgroundColor: Color(0xffffb74d),
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
