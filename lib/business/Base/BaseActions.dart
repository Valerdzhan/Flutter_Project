import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/document_state.dart';
import 'package:myapp/business/tasks/tasks_state.dart';
import 'package:myapp/business/users/users_state.dart';

abstract class BaseActions extends ReduxAction<AppState> {
  UserState get userState => state.userState;
  TaskState get taskState => state.taskState;
  DocumentState get documentState => state.documentState;
}
