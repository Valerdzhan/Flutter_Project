import 'package:flutter/material.dart';
import 'package:myapp/client/pages/tasks/task-list.dart';
import 'package:myapp/client/pages/user/personal_connector.dart';
import 'package:myapp/client/pages/user/personal.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: [
            TaskListConnector(),
            PersonalConnector(),
          ][_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              TaskListPage.navItem,
              PersonalPage.navItem,
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _navigateTo,
          ),
        ),
        // if (widget.isLoading) ModalBarrier(color: Colors.red.withOpacity(0.4)),
      ],
    );
  }
}
