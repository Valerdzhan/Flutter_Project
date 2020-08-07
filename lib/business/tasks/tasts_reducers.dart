import 'package:myapp/business/tasks/tasks_actions.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:redux/redux.dart';

final tasksReducer = combineReducers<TasksState>([
  TypedReducer<TasksState, SetTasksStateAction>(_setTasksStateAction),
  TypedReducer<TasksState, SetTaskStatusAction>(_setTaskStatusAction),
  // TypedReducer<List<Todo>, ClearCompletedAction>(_clearCompleted),
  // TypedReducer<List<Todo>, ToggleAllAction>(_toggleAll),
  // TypedReducer<List<Todo>, TodosLoadedAction>(_setLoadedTodos),
  // TypedReducer<List<Todo>, TodosNotLoadedAction>(_setNoTodos),
]);

TasksState _setTasksStateAction(
    TasksState prevState, SetTasksStateAction action) {
  final payload = action.tasksState;

  return prevState.copyWith(
      isError: payload.isError,
      isLoading: payload.isLoading,
      taskList: payload.taskList);
}

TasksState _setTaskStatusAction(
    TasksState prevState, SetTaskStatusAction action) {
  final statusTasks = action.statusTasks;

  return prevState.copyWith(
      isError: false, isLoading: false, taskStatus: statusTasks);
}
