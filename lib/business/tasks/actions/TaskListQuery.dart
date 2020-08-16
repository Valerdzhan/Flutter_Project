import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/Base/BaseActions.dart';
import 'package:myapp/business/tasks/actions/SetTaskStateAction.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
import 'package:myapp/business/tasks/actions/TasksActions.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskListQuery extends BaseActions {
  TaskListQuery();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    await Future.delayed(
      Duration(milliseconds: 5000),
      () async {
        GraphQLClient _client = graphQLConfiguration.clientToQuery();

        final QueryOptions options = QueryOptions(
            documentNode: UserTasksQuery().document,
            variables: <String, dynamic>{'skip': 0, 'limit': 20});

        final QueryResult result = await _client.query(options);

        if (!result.hasException) {
          var userTasks = TaskListItemInterfaceCollection.fromJson(
              result.data["userTasks"]);

          var newTaskState = taskState.copy(
            taskList: userTasks,
          );

          await dispatchFuture(SetTaskStateAction(newTaskState));
        }

        return state;
      },
    );
  }

  @override
  void before() => dispatch(IsLoadingTaskAction(true));

  @override
  void after() => dispatch(IsLoadingTaskAction(false));
}

class IsLoadingTaskAction extends ReduxAction<AppState> {
  IsLoadingTaskAction(this.val);

  final bool val;

  @override
  Future<AppState> reduce() async => state.copy(
        taskState: state.taskState.copy(isLoading: val),
      );
}
