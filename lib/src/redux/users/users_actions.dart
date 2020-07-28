import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/users/users_state.dart';
import 'package:queries/collections.dart';
import 'package:redux/redux.dart';

class SetUsersStateActions {
  final UsersState usersState;

  SetUsersStateActions(this.usersState);
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
    Dictionary<String, dynamic> users = jsonDecode(jsonString);

    store.dispatch(
        SetUsersStateActions(UsersState(isLoading: false, users: users)));
  } catch (error) {
    store.dispatch(SetUsersStateActions(UsersState(isLoading: true)));
  }
}
