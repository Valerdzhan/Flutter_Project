import 'package:flutter/material.dart';
import 'package:myapp/components/myScaffold.dart';

class TaskListPage extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskListPage> {
  final String _title = 'Мои задачи';
  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: this._title, body: TaskListBody());
  }
}

class TaskListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Task list')
        ],
      ) 
      
    );
  }
}
