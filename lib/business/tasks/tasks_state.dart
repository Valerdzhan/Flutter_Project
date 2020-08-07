import 'package:flutter/cupertino.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';
import 'package:myapp/src/models/ActivityTypes/TaskTypes/TaskListItemBase.dart';
import 'package:myapp/src/models/ActivityTypes/TaskTypes/statusTaskItem.dart';
import "package:myapp/src/extensions/string_extension.dart";

class TasksState {
  final bool isError;
  final bool isLoading;
  final TaskListItemList taskList;
  final Map<String, List<StatusTaskItem>> taskStatus;

  TasksState({this.isError, this.isLoading, this.taskList, this.taskStatus});

  factory TasksState.initial() => TasksState(
      isError: false,
      isLoading: false,
      taskList: new TaskListItemList(count: 0, items: []),
      taskStatus: new Map<String, List<StatusTaskItem>>());

  static String getStatusName(TasksState state, TaskListItemBase task) {
    // if (this.isSendAndRead) {
    //             return 'Прочтено'
    //         }

    String name = task.status;
    String statusType = task.taskType.capitalize() + 'TaskStatus';
    String statusName = _getStatusNameHelper(state, statusType, name);
    return statusName;
  }

  static String _getStatusNameHelper(
      TasksState state, String type, String name) {
    var statuses = state.taskStatus[type];
    if (statuses == null) {
      return 'UNDEFINED';
    }

    var status = statuses.firstWhere((st) {
      return st.name == name;
    });
    return status.description;
  }

  TasksState copyWith(
      {@required bool isError,
      @required bool isLoading,
      TaskListItemList taskList,
      Map<String, List<StatusTaskItem>> taskStatus}) {
    return TasksState(
        isError: isError ?? this.isError,
        isLoading: isLoading ?? this.isLoading,
        taskList: taskList ?? this.taskList,
        taskStatus: taskStatus ?? this.taskStatus);
  }
}
