import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/src/models/ActivityTypes/TaskListItemList.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/tasks/tasks_state.dart';
import 'package:redux/redux.dart';

class SetTasksStateAction {
  final TasksState tasksState;

  SetTasksStateAction(this.tasksState);
}

Future<String> _loadUserTasks() async {
  return await rootBundle.loadString("assets/data/userTasks.json");
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
