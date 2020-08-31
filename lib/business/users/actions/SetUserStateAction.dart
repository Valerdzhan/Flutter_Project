import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/users/users_state.dart';

class SetUsersStateAction extends ReduxAction<AppState> {
  final UserState usersState;
  SetUsersStateAction(this.usersState);

  @override
  AppState reduce() => state.copy(
        userState: usersState,
      );
}
