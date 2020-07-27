import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/components/myScaffold.dart';
import 'package:myapp/models/ActivityTypes/TaskListItemList.dart';

Future<String> _loadUserTasks() async {
  return await rootBundle.loadString("assets/data/UserTasks.json");
}

Future<TaskListItemList> parseJson() async {
  String jsonString = await _loadUserTasks();
  Map<String, dynamic> userTasks = jsonDecode(jsonString);
  return parseUserTasks(userTasks['userTasks']);
}

// A function that converts a response body into a List<Photo>.
TaskListItemList parseUserTasks(Map<String, dynamic> responseBody) {
  return TaskListItemList.fromJson(responseBody);
}

class TaskListPage extends StatefulWidget {
  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.home),
    title: Text('Главная'),
  );

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
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: FutureBuilder<TaskListItemList>(
          future: parseJson(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? TaskListItemBaseList(tasks: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class TaskListItemBaseList extends StatelessWidget {
  final TaskListItemList tasks;

  TaskListItemBaseList({Key key, this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        return ListTile(
          leading: ExcludeSemantics(
            child: CircleAvatar(child: Text('$index')),
          ),
          title: Row(
            children: [
              Expanded(
                  child: Text(
                      '${tasks.items[index].documentLastVersion.compileTitle}')
                      ),
              Text('${tasks.items[index].dueDate}'),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${tasks.items[index].status}'),
              Text('${tasks.items[index].taskType}'),
              Text('${tasks.items[index].actor}')
            ],
          ),
        );
      },
    );
  }
}
