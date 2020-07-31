import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';
import 'package:myapp/src/models/ActivityTypes/TaskTypes/statusTaskItem.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/tasks/tasks_state.dart';
import 'package:redux/redux.dart';

class SetTasksStateAction {
  final TasksState tasksState;

  SetTasksStateAction(this.tasksState);
}

class SetTaskStatusAction {
  final Map<String, List<StatusTaskItem>> statusTasks;

  SetTaskStatusAction(this.statusTasks);
}

Future<String> _loadUserTasks() async {
  return await rootBundle.loadString("assets/data/userTasks.json");
}

Future<String> _loadStatusTasks() async {
  return await rootBundle.loadString("assets/data/statusTaskList.json");
}

Future<void> fetchTastsAction(Store<AppState> store) async {
  store.dispatch(SetTasksStateAction(TasksState(isLoading: true)));

  try {
    String jsonString = await _loadUserTasks();
    Map<String, dynamic> userTasks = jsonDecode(jsonString);
    final jsonTasks = userTasks['userTasks'];
    store.dispatch(
      SetTasksStateAction(TasksState(
          isLoading: false, taskList: TaskListItemList.fromJson(jsonTasks))),
    );
  } catch (error) {
    store.dispatch(SetTasksStateAction(TasksState(isLoading: false)));
  }
}

Future<void> initTaskStatus(Store<AppState> store) async {
  try {
    String jsonString = await _loadStatusTasks();
    Map<String, dynamic> statusList = jsonDecode(jsonString);
    Map<String, List<StatusTaskItem>> list = statusList
        .map((k, v) => MapEntry(k, StatusTaskItem.listFromJson(v as List)));
    store.dispatch(SetTaskStatusAction(list));
  } catch (error) {
    print(error);
  }
}
