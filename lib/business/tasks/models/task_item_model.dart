import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:myapp/business/todos/actions/Actions.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskItemModel extends BaseModel<AppState> {
  TaskItemModel(this.taskId);

  String taskId;
  UserTasks$DFSQuery$UserTasks$Items task;
  VoidCallback onQuery;
  Function(String) onCreate;
  Function(int, String, bool) onUpdate;
  Function(int) onRemove;
  VoidCallback onPop;

  TaskItemModel.build({
    @required this.task,
    @required this.onQuery,
    @required this.onCreate,
    @required this.onUpdate,
    @required this.onRemove,
    @required this.onPop,
  }) : super(equals: [task]);

  @override
  TaskItemModel fromStore() => TaskItemModel.build(
        task: TaskState.getTaskById(store.state, taskId),
        onQuery: () => dispatch(QueryAction()),
        onCreate: (title) => dispatch(AddAction(title: title)),
        onUpdate: (id, title, done) =>
            dispatch(UpdateAction(id: id, title: title, done: done)),
        onRemove: (id) => dispatch(RemoveAction(id: id)),
        onPop: () => dispatch(NavigateAction.pop()),
      );
}
