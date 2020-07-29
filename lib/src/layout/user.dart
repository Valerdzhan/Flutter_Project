import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/users/users_state.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class UserItem extends StatefulWidget {
  final String userId;
  final bool show;
  UserItem({Key key, this.userId, this.show}) : super(key: key);

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  String userId;
  bool show = false;

  void _showModalBottomSheet(BuildContext context, MinimalUserItem user) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return _BottomSheetContent(user);
      },
    );
  }

  @override
  void initState() {
    userId = widget.userId;
    super.initState();
  }

  void togglePopover() {
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StoreConnector<AppState, MinimalUserItem>(
        distinct: true,
        converter: (store) =>
            UsersState.getUser(store.state.usersState, userId),
        builder: (context, user) {
          return SimpleTooltip(
            animationDuration: Duration(seconds: 1),
            show: show,
            tooltipDirection: TooltipDirection.up,
            child: GestureDetector(
              onTap: () => _showModalBottomSheet(context, user),
              child: Text(
                user != null ? user.displayName : '',
                textAlign: TextAlign.start,
              ),
            ),
            content: Text(
              "Some text example!!!!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                decoration: TextDecoration.none,
              ),
            ),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class _BottomSheetContent extends StatelessWidget {
  MinimalUserItem user;

  _BottomSheetContent(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            child: Center(
              child: Text(
                user.displayName,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Divider(thickness: 1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Служба ИУС Администрация"),
                Text("Инженер-программист 1 категории"),
                Text("тел.: 9-65-28"),
                Text("В сети"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
