import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/tasks_state.dart';

class SetTaskStateAction extends ReduxAction<AppState> {
  final TaskState taskState;
  SetTaskStateAction(this.taskState);

  @override
  AppState reduce() => state.copy(
        taskState: taskState,
      );
}
