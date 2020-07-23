import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 8.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountEmail: Text("valerdzhan@Gmail.com"),
              accountName: Text("Valeriy Ivanov"),
              currentAccountPicture: CircleAvatar(
                child: Text("VI"),
              ),
            ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Мои задачи'),
            onTap: () {
              Navigator.pushNamed(context, '/tasks');
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
  }
}
