import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';
import 'package:myapp/src/models/User/userItem.dart';
import 'package:myapp/src/pages/task-list.dart';
import 'package:myapp/src/pages/personal.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/tasks/tasks_actions.dart';
import 'package:myapp/src/redux/users/users_actions.dart';

import 'graphql_provider.dart';

String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

void main() async {
  await Redux.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'СЭД';

  @override
  Widget build(BuildContext context) {
    return GraphqlProvider(
      uri: 'http://$host:9002/graphql',
      child: MaterialApp(
        title: this._title,
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => TaskListPage(),
        //   '/user': (context) => UserPage(),
        // },
        theme: ThemeData(primarySwatch: Colors.blue),
        home: StoreProvider<AppState>(
            store: Redux.store,
            child: HomePage(
              title: 'Главная',
            )),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(documentNode: InitQuery().document),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final currentUser =
            Init$DFSQuery$CurrentUser.fromJson(result.data["currentUser"]);
        Redux.store.dispatch(SetCurrentUserActions(currentUser));

        Redux.store.dispatch(fetchUsersAction);
        Redux.store.dispatch(initTaskStatus);
        return Scaffold(
          body: [TaskListPage(), UserPage()][_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              TaskListPage.navItem,
              UserPage.navItem,
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _navigateTo,
          ),
        );
      },
    );
  }
}
