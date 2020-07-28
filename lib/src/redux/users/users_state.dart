import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';
import 'package:queries/collections.dart';

Future<String> _loadUsers() async {
  return await rootBundle.loadString("assets/data/users.json");
}

class UsersState {
  final bool isError;
  final bool isLoading;
  final Dictionary<String, MinimalUserItem> users;

  UsersState({
    this.isError,
    this.isLoading,
    this.users,
  });

  static Future<UsersState> initialAsync() async {
    String jsonString = await _loadUsers();
    Dictionary<String, dynamic> users = jsonDecode(jsonString);

    return UsersState(isError: false, isLoading: false, users: users);
  }

  factory UsersState.initial() {
    UsersState result;
    initialAsync().then((value) => result = value);
    // .then((value) => return value)
    return result;
  }

  static MinimalUserItem getUser(UsersState userState, String id) =>
      userState.users[id];

  UsersState copyWith({
    @required bool isError,
    @required bool isLoading,
    Dictionary<String, MinimalUserItem> users,
  }) {
    return UsersState(
      isError: isError ?? this.isError,
      isLoading: isLoading ?? this.isLoading,
      users: users ?? this.users,
    );
  }
}
