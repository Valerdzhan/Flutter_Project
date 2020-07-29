import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myapp/src/components/myScaffold.dart';
import 'package:myapp/src/layout/user.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/tasks/tasks_actions.dart';

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
    Redux.store.dispatch(fetchTastsAction);
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Center(
            child: StoreConnector<AppState, bool>(
              distinct: true,
              converter: (store) => store.state.tasksState.isLoading,
              builder: (context, isLoading) {
                if (isLoading) {
                  return CircularProgressIndicator();
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ),
          StoreConnector<AppState, bool>(
            distinct: true,
            converter: (store) => store.state.tasksState.isError,
            builder: (context, isLoading) {
              if (isLoading) {
                return Text('Failed');
              } else {
                return SizedBox.shrink();
              }
            },
          ),
          Expanded(
            child: StoreConnector<AppState, TaskListItemList>(
              distinct: true,
              converter: (store) => store.state.tasksState.taskList,
              builder: (context, tasks) {
                return TaskListItemBaseList(tasks: tasks);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TaskListItemBaseList extends StatelessWidget {
  final TaskListItemList tasks;

  TaskListItemBaseList({Key key, this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tasks.items.length == 0
        ? Text('Нет задач')
        : Center(
            child: ListView.builder(
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
                              '${tasks.items[index].documentLastVersion.compileTitle}')),
                      Text('${tasks.items[index].dueDate}'),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${tasks.items[index].status}'),
                      Text('${tasks.items[index].taskType}'),
                      UserItem(userId: tasks.items[index].actor)
                    ],
                  ),
                );
              },
            ),
          );
  }
}
