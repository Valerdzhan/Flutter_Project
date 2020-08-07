import 'package:flutter/material.dart';
import 'package:myapp/client/user/personal.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';
import 'package:myapp/src/pages/task-list.dart';

class HomePage extends StatefulWidget {
  final Init$DFSQuery$CurrentUser currentUser;
  final Function() onQuery;

  HomePage({Key key, this.currentUser, this.onQuery}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        UserPage(),
        TaskListPage(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          UserPage.navItem,
          TaskListPage.navItem,
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _navigateTo,
      ),
    );
  }
}
