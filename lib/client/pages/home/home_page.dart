import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_connector.dart';
import 'package:myapp/client/pages/documents/documents_page.dart';
import 'package:myapp/client/pages/tasks/task_list_page.dart';
import 'package:myapp/client/pages/user/personal_connector.dart';
import 'package:myapp/client/pages/user/personal.dart';
import 'package:myapp/client/src/components/menu.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class HomePage extends StatefulWidget {
  final Init$DFSQuery$CurrentUser currentUser;
  final Function() onQuery;

  HomePage({Key key, this.currentUser, this.onQuery}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

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
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState.maybePop();

        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
        ][_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            TaskListPage.navItem,
            DocumentListPage.navItem,
            PersonalPage.navItem,
          ],
          selectedItemColor: Color(0xFF3366FF),
          onTap: _navigateTo,
        ),
      ),
    );
    // Stack(
    //   children: [
    // Scaffold(
    //   body: [
    //     TasksPageConnector(),
    //     PersonalConnector(),
    //   ][_selectedIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       TaskListPage.navItem,
    //       PersonalPage.navItem,
    //     ],
    //     currentIndex: _selectedIndex,
    //     selectedItemColor: Color(0xFF3366FF),
    //     onTap: _navigateTo,
    //   ),
    // ),
    //     // if (widget.isLoading) ModalBarrier(color: Colors.red.withOpacity(0.4)),
    //   ],
    // );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          TasksPageConnector(),
          DocumentsPageConnector(),
          PersonalConnector(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
