import 'package:flutter/material.dart';

import 'menu.dart';

class MyScaffold extends StatefulWidget {
  final String title;
  final String titleSecondLine;
  final AppBar customAppBar;
  final Widget body;
  final bool isDrawer;
  final dynamic floatingActionButton;

  MyScaffold(
      {Key key,
      this.title,
      this.titleSecondLine = null,
      this.customAppBar,
      this.body,
      this.isDrawer = true,
      this.floatingActionButton});

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
              text: this.widget.title,
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                if (widget.titleSecondLine != null)
                  TextSpan(
                    text: '\n${widget.titleSecondLine}',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
              ]),
        ),
        flexibleSpace: Container(
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
        ),
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
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
      drawer: widget.isDrawer ? MyDrawer() : null,
    );
  }
}
