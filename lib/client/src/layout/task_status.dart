import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/tasks_state.dart';

class StatusTask extends StatefulWidget {
  final dynamic task;

  StatusTask({Key key, this.task}) : super(key: key);

  @override
  _StatusTaskState createState() => _StatusTaskState();
}

class _StatusTaskState extends State<StatusTask> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StoreConnector<AppState, String>(
        converter: (store) => TaskState.getStatusName(store.state, widget.task),
        builder: (context, status) {
          return Text(status);
        },
      ),
    );
  }
}
