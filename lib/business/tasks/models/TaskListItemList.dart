import 'package:flutter/material.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskListItemInterfaceCollection extends UserTasks$DFSQuery$UserTasks {
  int count;

  List<UserTasks$DFSQuery$UserTasks$Items> items;

  TaskListItemInterfaceCollection({
    Key key,
    this.count = 0,
    this.items,
  }) : super();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskListItemInterfaceCollection &&
          runtimeType == other.runtimeType &&
          items == other.items &&
          count == other.count;

  @override
  int get hashCode => items.hashCode ^ count.hashCode;

  factory TaskListItemInterfaceCollection.fromUserTask(
      UserTasks$DFSQuery$UserTasks tasks) {
    return TaskListItemInterfaceCollection()
      ..count = tasks.count
      ..items = tasks.items;
  }

  factory TaskListItemInterfaceCollection.fromJson(Map<String, dynamic> json) {
    var tasks = UserTasks$DFSQuery$UserTasks.fromJson(json);
    return TaskListItemInterfaceCollection.fromUserTask(tasks);
  }
}
