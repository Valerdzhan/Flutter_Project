import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/tasks/models/TaskTypes/statusTaskItem.dart';
import 'package:myapp/business/users/actions/UsersActions.dart';
import 'package:myapp/business/users/models/minimal_user_item.dart';
import 'package:myapp/models/graphql/graphql_api.init.dart';

class InitActions extends ReduxAction<AppState> {
  InitActions();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
      documentNode: InitQuery().document,
    );

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var serverInfo =
          Init$DFSQuery$ServerInfo.fromJson(result.data["serverInfo"]);

      var allUsersState = MinimalUserItem.listFromAllUsers(serverInfo.allUsers);

      var currentUser =
          Init$DFSQuery$CurrentUser.fromJson(result.data["currentUser"]);

      var setUserState = state.userState
          .copy(currentUser: currentUser, allUsers: allUsersState);

      await dispatchFuture(SetUsersStateAction(setUserState));
      await dispatchFuture(InitTaskStatus());
    }
    return state;
  }

  @override
  void before() => dispatch(IsInitLoadAction(false));

  @override
  void after() => dispatch(IsInitLoadAction(true));
}

class IsInitLoadAction extends ReduxAction<AppState> {
  IsInitLoadAction(this.val);
  final bool val;

  @override
  Future<AppState> reduce() async => state.copy(
        isInitLoad: val,
      );
}

class AllUsersActions extends ReduxAction<AppState> {
  AllUsersActions();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();
  @override
  Future<AppState> reduce() async {
    print('AllUsersActions');

    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
      documentNode: InitQuery().document,
    );

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var serverInfo =
          Init$DFSQuery$ServerInfo.fromJson(result.data["serverInfo"]);

      var userStates = state.userState.copy(
        allUsers: MinimalUserItem.listFromAllUsers(serverInfo.allUsers),
      );

      await dispatchFuture(SetUsersStateAction(userStates));
    }

    return state;
  }
}

Future<String> _loadStatusTasks() async {
  return await rootBundle.loadString("assets/data/statusTaskList.json");
}

class InitTaskStatus extends ReduxAction<AppState> {
  InitTaskStatus();

  Future<AppState> reduce() async {
    String jsonString = await _loadStatusTasks();
    Map<String, dynamic> statusList = jsonDecode(jsonString);
    Map<String, List<StatusTaskItem>> list = statusList
        .map((k, v) => MapEntry(k, StatusTaskItem.listFromJson(v as List)));

    var taskState = state.taskState;

    var newTaskState = taskState.copy(taskStatus: list);

    return state.copy(taskState: newTaskState);
  }
}
