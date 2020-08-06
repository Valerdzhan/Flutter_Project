import 'package:flutter/cupertino.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';

class UsersState {
  final bool isError;
  final bool isLoading;
  final List<MinimalUserItem> users;
  final Init$DFSQuery$CurrentUser currentUser;

  UsersState({this.isError, this.isLoading, this.users, this.currentUser});

  factory UsersState.initial() => UsersState(
      isError: false, isLoading: false, users: [], currentUser: null);

  static MinimalUserItem getUser(UsersState state, String id) =>
      state.users != null
          ? state.users.firstWhere((item) => item.userId == id)
          : null;

  static Init$DFSQuery$CurrentUser getCurrentUser(UsersState state) =>
      state.currentUser;

  UsersState copyWith(
      {@required bool isError,
      @required bool isLoading,
      List<MinimalUserItem> users,
      Init$DFSQuery$CurrentUser currentUser}) {
    return UsersState(
        isError: isError ?? this.isError,
        isLoading: isLoading ?? this.isLoading,
        users: users ?? this.users,
        currentUser: currentUser ?? this.currentUser);
  }
}
