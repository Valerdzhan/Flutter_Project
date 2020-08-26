import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/actions/TaskListQuery.dart';
import 'package:myapp/business/tasks/actions/TaskLoadMoreAction.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';

class TasksModel extends BaseModel<AppState> {
  TasksModel();

  TaskListItemInterfaceCollection tasks;
  VoidCallback onQuery;
  VoidCallback loadMore;
  Future<void> Function() onRefresh;
  bool isLoading;

  TasksModel.build({
    @required this.tasks,
    @required this.isLoading,
    @required this.onQuery,
    @required this.onRefresh,
    @required this.loadMore,
  }) : super(equals: [tasks, isLoading]);

  @override
  TasksModel fromStore() => TasksModel.build(
        tasks: state.taskState.taskList,
        isLoading: state.taskState.isLoading,
        loadMore: () => dispatch(TaskLoadMoreAction()),
        onQuery: () => dispatch(TaskListQuery()),
        onRefresh: () => dispatchFuture(TaskListQuery()),
      );
}
