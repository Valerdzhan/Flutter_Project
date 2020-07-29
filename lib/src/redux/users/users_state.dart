import 'package:flutter/cupertino.dart';
import 'package:myapp/src/models/User/minimaUserItem.dart';

class UsersState {
  final bool isError;
  final bool isLoading;
  final List<MinimalUserItem> users;

  UsersState({
    this.isError,
    this.isLoading,
    this.users,
  });

  factory UsersState.initial() =>
      UsersState(isError: false, isLoading: false, users: []);

  static MinimalUserItem getUser(UsersState state, String id) =>
      state.users != null
          ? state.users.firstWhere((item) => item.userId == id)
          : null;

  UsersState copyWith({
    @required bool isError,
    @required bool isLoading,
    List<MinimalUserItem> users,
  }) {
    return UsersState(
      isError: isError ?? this.isError,
      isLoading: isLoading ?? this.isLoading,
      users: users ?? this.users,
    );
  }
}
