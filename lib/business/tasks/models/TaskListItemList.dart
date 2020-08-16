import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskListItemInterfaceCollection extends UserTasks$DFSQuery$UserTasks {
  TaskListItemInterfaceCollection() : super();

  factory TaskListItemInterfaceCollection.fromJson(
      Map<String, dynamic> parsedJson) {
    final tasks = UserTasks$DFSQuery$UserTasks.fromJson(parsedJson);
    var taskListItemInterfaceCollection = new TaskListItemInterfaceCollection();
    taskListItemInterfaceCollection.items = tasks.items;
    taskListItemInterfaceCollection.count = tasks.count;
    return taskListItemInterfaceCollection;
  }
}
