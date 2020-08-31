import 'package:async_redux/async_redux.dart';
import 'package:flutter/services.dart';
import 'package:myapp/business/documents/document_state.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:myapp/business/todos/models/todo.dart';
import 'package:myapp/business/users/users_state.dart';

class AppState {
  final Wait wait;
  final bool waiting;
  final bool isInitLoad;
  final List<Todo> todoList;
  final TaskState taskState;
  final UserState userState;
  final DocumentState documentState;

  AppState({
    this.wait,
    this.todoList,
    this.taskState,
    this.userState,
    this.documentState,
    this.isInitLoad,
    this.waiting,
  });

  AppState copy({
    List<Todo> todoList,
    TaskState taskState,
    UserState userState,
    DocumentState documentState,
    bool isInitLoad,
    bool waiting,
    Wait wait,
  }) =>
      AppState(
        todoList: todoList ?? this.todoList,
        taskState: taskState ?? this.taskState,
        userState: userState ?? this.userState,
        documentState: documentState ?? this.documentState,
        isInitLoad: isInitLoad ?? this.isInitLoad,
        waiting: waiting ?? this.waiting,
        wait: wait ?? this.wait,
      );

  static AppState initialState() => AppState(
        todoList: <Todo>[],
        taskState: TaskState.initial(),
        userState: UserState.initial(),
        documentState: DocumentState.initial(),
        isInitLoad: false,
        waiting: false,
        wait: Wait(),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          todoList == other.todoList &&
          userState == other.userState &&
          taskState == other.taskState &&
          documentState == other.documentState &&
          isInitLoad == other.isInitLoad &&
          waiting == other.waiting &&
          wait == other.wait;

  @override
  int get hashCode =>
      todoList.hashCode ^
      userState.hashCode ^
      taskState.hashCode ^
      documentState.hashCode ^
      isInitLoad.hashCode ^
      waiting.hashCode ^
      wait.hashCode;
}

var store = Store<AppState>(
  initialState: AppState.initialState(),
  wrapError: MyWrapError(),
  // actionObservers: [Log<AppState>.printer()],
  // modelObserver: DefaultModelObserver(),
);

class MyWrapError extends WrapError {
  @override
  UserException wrap(
      Object error, StackTrace stackTrace, ReduxAction<dynamic> action) {
    if ((error is PlatformException) &&
        (error.code == "Error performing get") &&
        (error.message ==
            "Failed to get document because the client is offline."))
      return UserException("Check your internet connection.", cause: error);
    else
      return null;
  }
}
