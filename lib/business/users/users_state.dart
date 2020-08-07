import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class UsersState {
  // final List<MinimalUserItem> users;
  final Init$DFSQuery$CurrentUser currentUser;

  UsersState({
    // this.users,
    this.currentUser,
  });

  factory UsersState.initial() => UsersState(
        // users: <MinimalUserItem>[],
        currentUser: null,
      );

  // static MinimalUserItem getUser(UsersState state, String id) =>
  //     state.users != null
  //         ? state.users.firstWhere((item) => item.userId == id)
  //         : null;

  static Init$DFSQuery$CurrentUser getCurrentUser(UsersState state) =>
      state.currentUser;

  UsersState copy({
    // List<MinimalUserItem> users,
    Init$DFSQuery$CurrentUser currentUser,
  }) {
    return UsersState(
        // users: users ?? this.users,
        currentUser: currentUser ?? this.currentUser);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersState &&
          runtimeType == other.runtimeType &&
          // users == other.users &&
          currentUser == other.currentUser;

  @override
  int get hashCode => currentUser.hashCode;
}
