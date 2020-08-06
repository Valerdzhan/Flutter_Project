import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';
import 'package:myapp/src/models/User/userItem.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/users/users_state.dart';
import 'package:redux/redux.dart';

class SetUsersStateActions {
  final UsersState usersState;

  SetUsersStateActions(this.usersState);
}

class SetCurrentUserActions {
  final Init$DFSQuery$CurrentUser currentUser;

  SetCurrentUserActions(this.currentUser);
}

class GetUserByIdAction {
  final String userId;
  final UsersState usersState;

  GetUserByIdAction(this.userId, this.usersState);
}

Future<String> _loadUsers() async {
  return await rootBundle.loadString("assets/data/users.json");
}

Future<void> fetchUsersAction(Store<AppState> store) async {
  store.dispatch(SetUsersStateActions(UsersState(isLoading: true)));

  try {
    String jsonString = await _loadUsers();
    Map<String, dynamic> jsonUsers = jsonDecode(jsonString);
    List<MinimalUserItem> userList = MinimalUserItem.listFromJson(
        jsonUsers["data"]["serverInfo"]["allUsers"]);
    userList.forEach((element) {
      print(element);
    });
    store.dispatch(
        SetUsersStateActions(UsersState(isLoading: false, users: userList)));
  } catch (error) {
    print(error);
    store.dispatch(SetUsersStateActions(UsersState(isLoading: true)));
  }
}
