import 'package:myapp/business/tasks/models/TaskTypes/statusTaskItem.dart';

class StatusTaskActionItem {
  final String status;
  final List<StatusTaskItem> actions;

  StatusTaskActionItem({this.status, this.actions});

  factory StatusTaskActionItem.fromJson(Map<String, dynamic> json) {
    return StatusTaskActionItem(
      status: json['status'] as String,
      actions: StatusTaskItem.listFromJson(json['actions']),
    );
  }

  static List<StatusTaskActionItem> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StatusTaskActionItem>()
        : json.map((value) => StatusTaskActionItem.fromJson(value)).toList();
  }
}
