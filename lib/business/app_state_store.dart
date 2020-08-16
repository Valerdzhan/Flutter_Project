import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:myapp/business/todos/models/todo.dart';
import 'package:myapp/business/users/users_state.dart';

class AppState {
  final bool waiting;
  final bool isInitLoad;
  final List<Todo> todoList;
  final TaskState taskState;
  final UserState userState;

  AppState({
    this.todoList,
    this.taskState,
    this.userState,
    this.isInitLoad,
    this.waiting,
  });

  AppState copy({
    List<Todo> todoList,
    TaskState taskState,
    UserState userState,
    bool isInitLoad,
    bool waiting,
  }) =>
      AppState(
        todoList: todoList ?? this.todoList,
        taskState: taskState ?? this.taskState,
        userState: userState ?? this.userState,
        isInitLoad: isInitLoad ?? this.isInitLoad,
        waiting: waiting ?? this.waiting,
      );

  static AppState initialState() => AppState(
        todoList: <Todo>[],
        taskState: TaskState.initial(),
        userState: UserState.initial(),
        isInitLoad: false,
        waiting: false,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          todoList == other.todoList &&
          userState == other.userState &&
          taskState == other.taskState &&
          isInitLoad == other.isInitLoad &&
          waiting == other.waiting;

  @override
  int get hashCode =>
      todoList.hashCode ^
      userState.hashCode ^
      taskState.hashCode ^
      isInitLoad.hashCode ^
      waiting.hashCode;
}

var store = Store<AppState>(
  initialState: AppState.initialState(),
  // actionObservers: [Log<AppState>.printer()],
  // modelObserver: DefaultModelObserver(),
);
