import 'package:flutter/material.dart';
import 'package:myapp/components/myScaffold.dart';
import 'package:myapp/pages/task-list.dart';
import 'package:myapp/pages/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'СЭД'; 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this._title,
      initialRoute: '/',
      routes: {
        '/': (context) => TaskListPage(),
        '/user': (context) => UserPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: this.title, body: HomePageBody());
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Center(
              child: Text('Добро пожаловать в СЭД'),
            )
          ],
        ),
      );
  }
}