import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
import 'package:myapp/business/tasks/models/TaskTypes/statusTaskItem.dart';
import 'package:myapp/client/src/extensions/string_extension.dart';

class TaskState {
  final TaskListItemInterfaceCollection taskList;
  final Map<String, List<StatusTaskItem>> taskStatus;
  final bool isLoading;

  TaskState({
    this.taskList,
    this.taskStatus,
    this.isLoading,
  });

  factory TaskState.initial() => TaskState(
        taskList: null,
        taskStatus: null,
        isLoading: true,
      );

  static String getStatusName(
    AppState state,
    dynamic task,
  ) {
    // if (this.isSendAndRead) {
    //             return 'Прочтено'
    //         }

    String name = task.status;
    String statusType;

    switch (task.$$typename) {
      case r'RouteTaskListItemType':
        var idx = task.routeTaskType.toString().indexOf('.') + 1;
        statusType = task.routeTaskType.toString().substring(idx).capitalize() +
            'TaskStatus';
        break;
      case r'ResolutionTaskListItemType':
        var idx = task.resolutionTaskType.toString().indexOf('.') + 1;
        statusType =
            task.resolutionTaskType.toString().substring(idx).capitalize() +
                'TaskStatus';
        break;
      case r'ProcessingTaskListItemType':
        var idx = task.internalTaskType.toString().indexOf('.') + 1;
        statusType =
            task.internalTaskType.toString().substring(idx).capitalize() +
                'TaskStatus';
        break;
      case r'ForHRDecisionTaskListItemType':
        var idx = task.decisionTaskType.toString().indexOf('.') + 1;
        statusType =
            task.decisionTaskType.toString().substring(idx).capitalize() +
                'TaskStatus';
        break;
      default:
    }

    String statusName = _getStatusNameHelper(state.taskState, statusType, name);
    return statusName;
  }

  static String _getStatusNameHelper(
    TaskState state,
    String type,
    String name,
  ) {
    try {
      var statuses = state.taskStatus[type];

      if (statuses == null) {
        return 'UNDEFINED';
      }

      var status = statuses.firstWhere((st) {
        return st.name == name;
      });
      return status.description;
    } catch (err) {
      print('Error type: ${type}');
      return 'Error type: ${type}';
    }
  }

  TaskState copy({
    TaskListItemInterfaceCollection taskList,
    Map<String, List<StatusTaskItem>> taskStatus,
    bool isLoading,
  }) =>
      TaskState(
        taskList: taskList ?? this.taskList,
        taskStatus: taskStatus ?? this.taskStatus,
        isLoading: isLoading ?? this.isLoading,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskState &&
          runtimeType == other.runtimeType &&
          taskList == other.taskList &&
          taskStatus == other.taskStatus &&
          isLoading == other.isLoading;

  @override
  int get hashCode =>
      taskList.hashCode ^ taskStatus.hashCode ^ isLoading.hashCode;
}
