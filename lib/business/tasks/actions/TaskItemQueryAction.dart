import 'package:flutter/material.dart';
import 'package:myapp/business/Base/BarrierAction.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/Base/BaseActions.dart';

class TaskItemQueryAction extends BaseActions with BarrierAction {
  final String taskId;
  TaskItemQueryAction({@required this.taskId})
      : assert(taskId != null || taskId != '');

  @override
  Future<AppState> reduce() async {
    return state;
  }
}
