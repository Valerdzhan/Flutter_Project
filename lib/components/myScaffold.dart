import 'package:flutter/material.dart';

import 'menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool isDrawer;

  MyScaffold({Key key, this.title, this.body, this.isDrawer = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Поиск',
            onPressed: () => {print('click search')},
          ),
          // Страница пользователя, переход через route /user
          // IconButton(
          //   icon: Icon(Icons.person),
          //   tooltip: 'Пользователь',
          //   onPressed: () => {
          //     Navigator.pushNamed(context, '/user')
          //   },
          // )
        ],
      ),
      body: body,
      drawer: isDrawer ? MyDrawer() : null,
    );
  }
}
