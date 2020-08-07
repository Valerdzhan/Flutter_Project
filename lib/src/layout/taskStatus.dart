import 'package:flutter/cupertino.dart';
import 'package:myapp/src/models/ActivityTypes/TaskTypes/TaskListItemBase.dart';

class StatusTask extends StatefulWidget {
  final TaskListItemBase task;

  StatusTask({Key key, this.task}) : super(key: key);

  @override
  _StatusTaskState createState() => _StatusTaskState();
}

class _StatusTaskState extends State<StatusTask> {
  TaskListItemBase _task;

  @override
  void initState() {
    _task = widget.task;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("bla bla"),
      // StoreConnector<AppState, String>(
      //   distinct: true,
      //   converter: (store) =>
      //       TasksState.getStatusName(store.state.tasksState, _task),
      //   builder: (context, status) {
      //     return Text(status);
      //   },
      // ),
    );
  }
}
