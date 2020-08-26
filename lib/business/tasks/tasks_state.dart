import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
import 'package:myapp/business/tasks/models/TaskTypes/statusTaskActionItem.dart';
import 'package:myapp/business/tasks/models/TaskTypes/statusTaskItem.dart';
import 'package:myapp/client/src/extensions/string_extension.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskState {
  final TaskListItemInterfaceCollection taskList;
  final Map<String, UserTasks$DFSQuery$UserTasks$Items> tasks;
  final Map<String, List<StatusTaskItem>> taskStatus;
  final Map<String, List<StatusTaskItem>> taskActions;
  final Map<String, List<StatusTaskActionItem>> actionFromStatus;
  final Map<String, List<StatusTaskActionItem>> overseerActionFromStatus;
  final Map<String, List<StatusTaskActionItem>> responderActionFromStatus;
  // status: StatusListType,
  //   actions: ActionListType,
  //   actionFromStatus: ActionFromStatus,
  //   overseerActionFromStatus: OverseerActionFromStatus,
  //   responderActionFromStatus: ResponderActionFromStatus
  final bool isLoading;

  TaskState({
    this.taskList,
    this.tasks,
    this.taskStatus,
    this.isLoading,
    this.taskActions,
    this.actionFromStatus,
    this.overseerActionFromStatus,
    this.responderActionFromStatus,
  });

  factory TaskState.initial() => TaskState(
      taskList: new TaskListItemInterfaceCollection(count: 0, items: []),
      tasks: null,
      taskStatus: null,
      isLoading: true,
      actionFromStatus: null,
      overseerActionFromStatus: null,
      responderActionFromStatus: null,
      taskActions: null);

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

  static UserTasks$DFSQuery$UserTasks$Items getTaskById(
          AppState state, String taskId) =>
      state.taskState.tasks.isNotEmpty
          ? state.taskState.tasks[taskId] != null
              ? state.taskState.tasks[taskId]
              : state.taskState.tasks[0]
          : null;

  TaskState copy({
    TaskListItemInterfaceCollection taskList,
    Map<String, UserTasks$DFSQuery$UserTasks$Items> tasks,
    Map<String, List<StatusTaskItem>> taskStatus,
    Map<String, List<StatusTaskItem>> taskActions,
    Map<String, List<dynamic>> actionFromStatus,
    Map<String, List<dynamic>> overseerActionFromStatus,
    Map<String, List<dynamic>> responderActionFromStatus,
    bool isLoading,
  }) =>
      TaskState(
        taskList: taskList ?? this.taskList,
        tasks: tasks ?? this.tasks,
        taskStatus: taskStatus ?? this.taskStatus,
        isLoading: isLoading ?? this.isLoading,
        taskActions: taskActions ?? this.taskActions,
        actionFromStatus: actionFromStatus ?? this.actionFromStatus,
        overseerActionFromStatus:
            overseerActionFromStatus ?? this.overseerActionFromStatus,
        responderActionFromStatus:
            responderActionFromStatus ?? this.responderActionFromStatus,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskState &&
          runtimeType == other.runtimeType &&
          taskList == other.taskList &&
          tasks == other.tasks &&
          taskStatus == other.taskStatus &&
          isLoading == other.isLoading &&
          taskActions == other.taskActions &&
          actionFromStatus == other.actionFromStatus &&
          overseerActionFromStatus == other.overseerActionFromStatus &&
          responderActionFromStatus == other.responderActionFromStatus;

  @override
  int get hashCode =>
      taskList.hashCode ^
      taskStatus.hashCode ^
      isLoading.hashCode ^
      tasks.hashCode ^
      taskActions.hashCode ^
      actionFromStatus.hashCode ^
      overseerActionFromStatus.hashCode ^
      responderActionFromStatus.hashCode;
}
