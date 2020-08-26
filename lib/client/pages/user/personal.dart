import 'package:flutter/material.dart';
import 'package:myapp/client/src/components/my_scaffold.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class PersonalPage extends StatefulWidget {
  final Init$DFSQuery$CurrentUser currentUser;

  PersonalPage({
    Key key,
    this.currentUser,
  }) : super(key: key);

  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    title: Text('Пользователь'),
  );

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  final String _title = 'Пользователь';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: this._title,
            style: TextStyle(fontSize: 20),
          ),
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
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      'assets/images/NonameUser.png',
                      fit: BoxFit.cover,
                      width: 76,
                      height: 76,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: widget.currentUser == null
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.currentUser.displayName),
                              Text(widget.currentUser.jobTitle),
                              Text(widget.currentUser.department),
                              Text(widget.currentUser.email),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // isDrawer: false,
    );
  }
}
