import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/Base/BaseActions.dart';
import 'package:myapp/business/tasks/actions/SetTaskStateAction.dart';
import 'package:myapp/business/tasks/actions/TaskListQuery.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';

Future<String> _loadTasks() async {
  return await rootBundle.loadString("assets/data/userTasks.json");
}

class MockTaskListQuery extends BaseActions {
  MockTaskListQuery();

  @override
  Future<AppState> reduce() async {
    String jsonString = await _loadTasks();
    Map<String, dynamic> taskList = jsonDecode(jsonString);

    var userTasks =
        TaskListItemInterfaceCollection.fromJson(taskList["userTasks"]);

    var newTaskState = taskState.copy(
      taskList: userTasks,
    );

    dispatch(SetTaskStateAction(newTaskState));
    dispatch(SetTaskToMapAction(userTasks.items));
  }
}
