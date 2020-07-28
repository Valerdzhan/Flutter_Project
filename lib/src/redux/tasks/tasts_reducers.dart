import 'package:myapp/src/redux/tasks/tasks_actions.dart';
import 'package:myapp/src/redux/tasks/tasks_state.dart';
import 'package:redux/redux.dart';

final tasksReducer = combineReducers<TasksState>([
  TypedReducer<TasksState, SetTasksStateAction>(_setTasksStateAction),
  // TypedReducer<List<Todo>, UpdateTodoAction>(_updateTodo),
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
