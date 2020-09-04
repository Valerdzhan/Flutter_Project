import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/Base/BaseActions.dart';
import 'package:myapp/business/tasks/actions/MockTasksAction.dart';
import 'package:myapp/business/tasks/actions/SetTaskStateAction.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskListQuery extends BaseActions {
  TaskListQuery();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    await Future.delayed(
      Duration(milliseconds: 5000),
      () async {
        dispatch(MockTaskListQuery());
        // GraphQLClient _client = graphQLConfiguration.clientToQuery();

        // final QueryOptions options = QueryOptions(
        //     documentNode: UserTasksQuery().document,
        //     variables: <String, dynamic>{'skip': 0, 'limit': 20});

        // final QueryResult result = await _client.query(options);

        // if (!result.hasException) {
        //   var userTasks = TaskListItemInterfaceCollection.fromJson(
        //       result.data["userTasks"]);

        //   var newTaskState = taskState.copy(
        //     taskList: userTasks,
        //   );

        //   dispatch(SetTaskStateAction(newTaskState));
        //   dispatch(SetTaskToMapAction(userTasks.items));
        // }
      },
    );

    return state;
  }

// The wait starts here. We use the index as a wait-flag reference.
  @override
  void before() => dispatch(WaitAction.add("tasks-wait"));

  // The wait ends here. We remove the index from the wait-flag references.
  @override
  void after() => dispatch(WaitAction.remove("tasks-wait"));
}

class SetTaskToMapAction extends ReduxAction<AppState> {
  SetTaskToMapAction(this.tasks);
  final List<UserTasks$DFSQuery$UserTasks$Items> tasks;

  @override
  AppState reduce() {
    var dictTasks =
        Map<String, UserTasks$DFSQuery$UserTasks$Items>.fromIterable(tasks,
            key: (task) => task.id.toString(), value: (task) => task);

    var newTaskState = state.taskState.copy(
      tasks: dictTasks,
    );

    dispatch(SetTaskStateAction(newTaskState));
    return state;
  }
}

class IsLoadingTaskAction extends ReduxAction<AppState> {
  IsLoadingTaskAction(this.val);

  final bool val;

  @override
  AppState reduce() => state.copy(
        taskState: state.taskState.copy(isLoading: val),
      );
}
