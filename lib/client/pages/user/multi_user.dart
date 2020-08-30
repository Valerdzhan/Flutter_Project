import 'package:flutter/material.dart';
import 'package:myapp/client/pages/user/user.dart';

class MultiUserItem extends StatefulWidget {
  final List<String> userIds;

  MultiUserItem({Key key, this.userIds}) : super(key: key);

  @override
  _MultiUserItemState createState() => _MultiUserItemState();
}

class _MultiUserItemState extends State<MultiUserItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: widget.userIds != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.userIds.length > 1)
                    Text("По списку")
                  else
                    ...widget.userIds
                        .map((userId) => UserItem(userId: userId))
                        .toList(),
                ],
              )
            : Text('Нет адресатов'));
  }
}
