import 'package:myapp/business/users/models/minimal_user_item.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class UserState {
  final List<MinimalUserItem> allUsers;
  final Init$DFSQuery$CurrentUser currentUser;
  // final List<Init$DFSQuery$ServerInfo$AllUsers> allUsers;

  UserState({
    // this.users,
    this.currentUser,
    this.allUsers,
  });

  factory UserState.initial() => UserState(
        currentUser: null,
        allUsers: <MinimalUserItem>[],
      );

  // static MinimalUserItem getUser(UsersState state, String id) =>
  //     state.users != null
  //         ? state.users.firstWhere((item) => item.userId == id)
  //         : null;

  static Init$DFSQuery$CurrentUser getCurrentUser(UserState state) =>
      state.currentUser;

  UserState copy({
    Init$DFSQuery$CurrentUser currentUser,
    List<MinimalUserItem> allUsers,
  }) {
    return UserState(
      currentUser: currentUser ?? this.currentUser,
      allUsers: allUsers ?? this.allUsers,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserState &&
          runtimeType == other.runtimeType &&
          allUsers == other.allUsers &&
          currentUser == other.currentUser;

  @override
  int get hashCode => currentUser.hashCode ^ allUsers.hashCode;
}
