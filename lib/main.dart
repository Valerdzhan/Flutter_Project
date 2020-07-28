import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myapp/src/pages/task-list.dart';
import 'package:myapp/src/pages/user.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/users/users_actions.dart';

void main() async {
  await Redux.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'СЭД';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          ),
        ));
  }
}

// class HomePage extends StatelessWidget {
//   final String title;
//   HomePage({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MyScaffold(title: this.title, body: HomePageBody());
//   }
// }

// class HomePageBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Column(
//           children: <Widget>[
//             Center(
//               child: Text('Добро пожаловать в СЭД'),
//             )
//           ],
//         ),
//       );
//   }
// }

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
    Redux.store.dispatch(fetchUsersAction);
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
  }
}
