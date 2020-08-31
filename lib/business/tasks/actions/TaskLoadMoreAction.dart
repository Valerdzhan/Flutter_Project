import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/tasks/actions/SetTaskStateAction.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';
import 'package:myapp/business/tasks/actions/TasksActions.dart';

class TaskLoadMoreAction extends ReduxAction<AppState> {
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
          var userTasks =
              UserTasks$DFSQuery$UserTasks.fromJson(result.data["userTasks"]);

          var newTasks = state.taskState.taskList;

          userTasks.count += newTasks.count;
          userTasks.items.forEach((dynamic item) => newTasks.items.add(item));

          // newTasks.items.addAll(userTasks.items);

          var newTaskState = state.taskState.copy(
            taskList: newTasks,
          );

          dispatch(SetTaskStateAction(newTaskState));
        }

        return state;
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
