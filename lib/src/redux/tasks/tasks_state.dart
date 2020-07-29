import 'package:flutter/cupertino.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';
import 'package:myapp/src/models/ActivityTypes/TaskTypes/statusTaskItem.dart';

class TasksState {
  final bool isError;
  final bool isLoading;
  final TaskListItemList taskList;
  final Map<String, StatusTaskItem> taskStatus;

  TasksState({this.isError, this.isLoading, this.taskList, this.taskStatus});

  factory TasksState.initial() => TasksState(
      isError: false,
      isLoading: false,
      taskList: new TaskListItemList(count: 0, items: []),
      taskStatus: new Map<String, StatusTaskItem>());

  TasksState copyWith(
      {@required bool isError,
      @required bool isLoading,
      TaskListItemList taskList,
      Map<String, StatusTaskItem> taskStatus}) {
    return TasksState(
        isError: isError ?? this.isError,
        isLoading: isLoading ?? this.isLoading,
        taskList: taskList ?? this.taskList,
        taskStatus: taskStatus ?? this.taskStatus);
  }
}
