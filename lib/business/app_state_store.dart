import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/todos/models/todo.dart';
import 'package:myapp/business/users/users_state.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class AppState {
  final List<Todo> todoList;
  // final TasksState tasksState;
  final UsersState usersState;
  final Init$DFSQuery$CurrentUser currentUser;

  AppState({
    this.todoList,
    // this.tasksState,
    this.usersState,
    this.currentUser,
  });

  AppState copy(
          {List<Todo> todoList,
          // TasksState tasksState,
          UsersState usersState,
          Init$DFSQuery$CurrentUser currentUser}) =>
      AppState(
        todoList: todoList ?? this.todoList,
        // tasksState: tasksState ?? this.tasksState,
        usersState: usersState ?? this.usersState,
        currentUser: currentUser ?? this.currentUser,
      );

  static AppState initialState() => AppState(
        todoList: <Todo>[],
        // tasksState: TasksState.initial(),
        usersState: UsersState.initial(),
        currentUser: null,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          todoList == other.todoList &&
          currentUser == other.currentUser;

  @override
  int get hashCode => todoList.hashCode ^ currentUser.hashCode;
}

var store = Store<AppState>(
  initialState: AppState.initialState(),
);
