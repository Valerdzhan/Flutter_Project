import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/client/pages/documents/document_connector.dart';
import 'package:myapp/client/pages/tasks/task_list_page.dart';
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
            padding: EdgeInsets.only(top: 0.0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xff0e5cad),
                      // Color(0xFF3366FF),
                      Color(0xff029cf5),
                      // Color(0xFF00CCFF),
                      // Color(0xff15eded),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                accountEmail:
                    Text(currentUser.email != null ? currentUser.email : ''),
                accountName: Text(currentUser.displayName != null
                    ? currentUser.displayName
                    : ''),
                currentAccountPicture: CircleAvatar(
                  child: Text("VI"), // Здесь надо вставить фото пользователя
                ),
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text('Мои задачи'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TasksPageConnector(),
                    ),
                  );
                  // Navigator.pushNamed(context, '/tasks');
                },
              ),
              ListTile(
                leading: Icon(Icons.switch_camera),
                // leading: Icon(Icons.assignment_late),
                title: Text('Мои резолюции'),
                onTap: () {
                  // Navigator.pushNamed(context, '/second');
                },
              ),
              ListTile(
                leading: Icon(Icons.border_color),
                // leading: Icon(Icons.assignment_ind),
                title: Text('Мои заявления'),
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text('Мои документы'),
              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text('Все документы'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DocumentsPageConnector(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
