import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  MyAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Поиск',
          onPressed: () => {print('click search')},
        ),
        IconButton(
          icon: Icon(Icons.person),
          tooltip: 'Пользователь',
          onPressed: () => {Navigator.pushNamed(context, '/user')},
        )
      ],
    );
  }
}
