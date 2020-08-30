import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

// ignore: must_be_immutable
class ContractListItem extends StatelessWidget implements IDocumentListItem {
  Documents$DFSQuery$Documents$Items$ContractListItem get contract =>
      Documents$DFSQuery$Documents$Items$ContractListItem.fromJson(
          item.toJson());

  ContractListItem({Key key, this.item}) : super(key: key);

  @override
  Documents$DFSQuery$Documents$Items item;

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
                color: Color(0xff009688),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8.0, right: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: contract.registerNumber != null
                                    ? Text(
                                        '№ ${contract.registerNumber} от ${DateFormat('dd.MM.yyyy').format(contract.preparationDate).toString()}')
                                    : null),
                            Text("На согласовании"),
                            // Text(contract.status),
                          ],
                        ),
                      ),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(child: Text('${contract.title}')),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(contract.contractorName),
                          Text(
                              'Сумма с НДС: ${contract.sumAmountWithTax.toString()}'),
                          Row(
                            children: [
                              Expanded(
                                child: UserItem(
                                  userId: contract.responderId,
                                ),
                              ),
                              Text(
                                DateFormat('dd.MM.yyyy')
                                    .format(contract.whenEdited)
                                    .toString(),
                              ),
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
                    child: Text('Д'),
                    backgroundColor: Color(0xff009688),
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
}
