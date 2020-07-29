import 'package:flutter/cupertino.dart';
import 'package:myapp/src/redux/tasks/tasks_state.dart';
import 'package:myapp/src/redux/tasks/tasts_reducers.dart';
import 'package:myapp/src/redux/users/users_reducers.dart';
import 'package:myapp/src/redux/users/users_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      tasksState: tasksReducer(state.tasksState, action),
      usersState: usersReducer(state.usersState, action));
}

@immutable
class AppState {
  final TasksState tasksState;
  final UsersState usersState;

  AppState({@required this.tasksState, @required this.usersState});

  static AppState initialState() => AppState(
      tasksState: TasksState.initial(), usersState: UsersState.initial());

  AppState copyWith({
    TasksState tasksState,
    UsersState usersState,
  }) {
    return AppState(
      tasksState: tasksState ?? this.tasksState,
      usersState: usersState ?? this.usersState,
    );
  }
}

class Redux {
  static Store<AppState> _store;

  static Store<AppState> get store {
    if (_store == null) {
      throw Exception('Store is not initialized');
    } else {
      return _store;
    }
  }

  static Future<void> init() async {
    var state = AppState.initialState();

    _store = Store<AppState>(appReducer,
        middleware: [thunkMiddleware], initialState: state);
  }
}
