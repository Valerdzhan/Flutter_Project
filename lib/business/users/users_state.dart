import 'package:myapp/business/app_state_store.dart';
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

  static MinimalUserItem getUser(AppState state, String id) => state
          .userState.allUsers.isNotEmpty

      /* Для тестирования, так как fake-graphql возвращает не все записи,
        а только рандомно из предложенных
        Поэтому если не находим, то берем первую запись
        */
      ? state.userState.allUsers.any((e) => e.userId == id)
          /*
            If the given list contains a duplicate, then singleWhere method retuns an exception. In that case, we can use firstWhere method which returns the first matching element irrespective of repeating / duplicates in the list.
            var sList = [1, 2, 3, 3, 4];
            print(sList.singleWhere((i) => i == 3)); 
            // Bad state: Too many elements
            
            print(sList.firstWhere((i) => i == 3)); // 3
       */
          ? state.userState.allUsers.firstWhere((item) => item.userId == id)
          : state.userState.allUsers[0]
      : null;

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
