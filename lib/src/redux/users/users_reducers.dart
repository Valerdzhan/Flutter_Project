import 'package:myapp/src/redux/users/users_actions.dart';
import 'package:myapp/src/redux/users/users_state.dart';
import 'package:redux/redux.dart';

final usersReducer = combineReducers<UsersState>([
  TypedReducer<UsersState, SetUsersStateActions>(_setUsersStateAction),
  TypedReducer<UsersState, SetCurrentUserActions>(_setCurretnUserAction),
  // TypedReducer<List<Todo>, ClearCompletedAction>(_clearCompleted),
  // TypedReducer<List<Todo>, ToggleAllAction>(_toggleAll),
  // TypedReducer<List<Todo>, TodosLoadedAction>(_setLoadedTodos),
  // TypedReducer<List<Todo>, TodosNotLoadedAction>(_setNoTodos),
]);

UsersState _setUsersStateAction(
    UsersState prevState, SetUsersStateActions action) {
  final payload = action.usersState;

  return UsersState(
      isError: payload.isError,
      isLoading: payload.isLoading,
      users: payload.users);
}

UsersState _setCurretnUserAction(
    UsersState prevState, SetCurrentUserActions action) {
  final payload = action.currentUser;

  return UsersState(currentUser: payload);
}
