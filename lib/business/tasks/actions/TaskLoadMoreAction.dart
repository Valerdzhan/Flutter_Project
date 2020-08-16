import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/tasks/actions/SetTaskStateAction.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
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
          var userTasks = TaskListItemInterfaceCollection.fromJson(
              result.data["userTasks"]);

          var newTasks = state.taskState.taskList;

          userTasks.count += newTasks.count;
          userTasks.items.forEach((dynamic item) => newTasks.items.add(item));

          // newTasks.items.addAll(userTasks.items);

          var newTaskState = state.taskState.copy(
            taskList: newTasks,
          );

          await dispatchFuture(SetTaskStateAction(newTaskState));
        }

        return state;
      },
    );
    return state;
  }

  @override
  void before() => dispatch(IsLoadingTaskAction(true));

  @override
  void after() => dispatch(IsLoadingTaskAction(false));
}
