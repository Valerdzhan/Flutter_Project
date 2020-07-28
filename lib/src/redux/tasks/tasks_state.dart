import 'package:flutter/cupertino.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';

class TasksState {
  final bool isError;
  final bool isLoading;
  final TaskListItemList taskList;

  TasksState({this.isError, this.isLoading, this.taskList});

  factory TasksState.initial() => TasksState(
      isError: false,
      isLoading: false,
      taskList: new TaskListItemList(count: 0, items: []));

  TasksState copyWith({
    @required bool isError,
    @required bool isLoading,
    @required TaskListItemList taskList,
  }) {
    return TasksState(
        isError: isError ?? this.isError,
        isLoading: isLoading ?? this.isLoading,
        taskList: taskList ?? this.taskList);
  }
}
