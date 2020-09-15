import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/models/task_item_model.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:myapp/client/pages/tasks/task_item/task_hr_task_item_page.dart';
import 'package:myapp/client/pages/tasks/task_item/task_processing_item_page.dart';
import 'package:myapp/client/pages/tasks/task_item/task_resolution_item_page.dart';
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
            return TaskResolutionItemPage(task: vm.task);
            break;
          case r'ProcessingTaskListItemType':
            return TaskProcessingItemPage(task: vm.task);
            break;
          case r'ForHRDecisionTaskListItemType':
            return TaskHRItemPage(task: vm.task);
            break;
          default:
            return Container();
        }
      },
    );
  }
}
