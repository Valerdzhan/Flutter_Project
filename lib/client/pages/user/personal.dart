import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/users/users_state.dart';
import 'package:myapp/client/src/components/myScaffold.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class PersonalPage extends StatefulWidget {
  final Init$DFSQuery$CurrentUser currentUser;

  PersonalPage({
    Key key,
    this.currentUser,
  }) : super(key: key);

  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    title: Text('Пользователь'),
  );

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  final String _title = 'Пользователь';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: this._title,
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset('assets/images/NonameUser.png',
                        height: 100.0, width: 100.0)),
                Flexible(
                  child: Container(
                    child: widget.currentUser == null
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.currentUser.displayName),
                              Text(widget.currentUser.jobTitle),
                              Text(widget.currentUser.department),
                              Text(widget.currentUser.email),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      isDrawer: false,
    );
  }
}
