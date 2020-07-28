import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myapp/src/components/myScaffold.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/tasks/tasks_actions.dart';
import 'package:queries/collections.dart';

// Future<String> _loadUserTasks() async {
//   return await rootBundle.loadString("assets/data/UserTasks.json");
// }

// Future<TaskListItemList> parseJson() async {
//   String jsonString = await _loadUserTasks();
//   Map<String, dynamic> userTasks = jsonDecode(jsonString);
//   return parseUserTasks(userTasks['userTasks']);
// }

// // A function that converts a response body into a List<Photo>.
// TaskListItemList parseUserTasks(Map<String, dynamic> responseBody) {
//   return TaskListItemList.fromJson(responseBody);
// }

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
  void _onFetchTasksPressed() {
    Redux.store.dispatch(fetchTastsAction);
  }

  @override
  Widget build(BuildContext context) {
    Redux.store.dispatch(fetchTastsAction);
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Load tasks'),
              onPressed: _onFetchTasksPressed,
            ),
            StoreConnector<AppState, bool>(
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
        )
        // Center(
        //   child: FutureBuilder<TaskListItemList>(
        //     future: parseJson(),
        //     builder: (context, snapshot) {
        //       if (snapshot.hasError) print(snapshot.error);

        //       return snapshot.hasData
        //           ? TaskListItemBaseList(tasks: snapshot.data)
        //           : Center(child: CircularProgressIndicator());
        //     },
        //   ),
        // ),
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
                      Text('${tasks.items[index].actor}'),
                      StoreConnector<AppState,
                          Dictionary<String, MinimalUserItem>>(
                        distinct: true,
                        converter: (store) => store.state.usersState.users,
                        builder: (context, users) {
                          if (users != null) {
                            MinimalUserItem user =
                                users ?? users["${tasks.items[index].actor}"];
                            return Text('User: ${user.displayName}');
                          } else {
                            return CircularProgressIndicator();
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          );
  }
}
