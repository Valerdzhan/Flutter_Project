import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class ContractListItem extends StatelessWidget implements IDocumentItem {
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
        // : Container(child: Text('${item.documentType}'));
        : ListTile(
            leading: ExcludeSemantics(
              child: CircleAvatar(child: Text('Д')),
            ),
            title: Row(
              children: [
                Expanded(child: Text('${contract.compileTitle}')),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // StatusTask(
                //   task: widget.tasks.items[index],
                // ),
                Text(contract.registerNumber),
                Text(
                  DateFormat('dd.MM.yyyy')
                      .format(contract.preparationDate)
                      .toString(),
                ),
                Text(contract.contractorName),
                Text(contract.sumAmountWithTax.toString()),
                UserItem(
                  userId: contract.contractorId,
                ),
                UserItem(
                  userId: contract.editorId,
                ),
                Text(
                  DateFormat('dd.MM.yyyy')
                      .format(contract.whenEdited)
                      .toString(),
                ),
                Text(contract.status),
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
