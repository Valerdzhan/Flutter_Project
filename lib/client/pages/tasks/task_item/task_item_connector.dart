import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/models/task_item_model.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:myapp/client/pages/tasks/task_item/task_route_item_page.dart';

class TaskItemPageConnector extends StatefulWidget {
  final String taskId;
  TaskItemPageConnector({Key key, this.taskId}) : super(key: key);

  @override
  _TaskItemPageConnectorState createState() => _TaskItemPageConnectorState();
}

class _TaskItemPageConnectorState extends State<TaskItemPageConnector> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TaskItemModel>(
      model: TaskItemModel(widget.taskId),
      onInit: (vm) => TaskState.getTaskById(store.state, widget.taskId),
      builder: (BuildContext context, TaskItemModel vm) {
        switch (vm.task.$$typename) {
          case r'RouteTaskListItemType':
            return TaskRouteItemPage(task: vm.task);
          case r'ResolutionTaskListItemType':
            break;
          case r'ProcessingTaskListItemType':
            break;
          case r'ForHRDecisionTaskListItemType':
            break;
          default:
            return Container();
        }
        return Container();
      },
    );
  }
}
