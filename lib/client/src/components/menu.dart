import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/users/users_state.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Init$DFSQuery$CurrentUser>(
      distinct: true,
      converter: (store) => store.state.userState.currentUser,
      builder: (context, currentUser) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 8.0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(currentUser.email),
                accountName: Text(currentUser.displayName),
                currentAccountPicture: CircleAvatar(
                  child: Text("VI"), // Здесь надо вставить фото пользователя
                ),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Мои задачи'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Мои резолюции'),
                onTap: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Мои документы'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Мои заявления'),
              ),
              ListTile(
                leading: Icon(Icons.view_list),
                title: Text('Все документы'),
              ),
            ],
          ),
        );
      },
    );
  }
}
