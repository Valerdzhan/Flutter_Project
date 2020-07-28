import 'package:myapp/src/models/ActivityTypes/TaskTypes/TaskListItemBase.dart';

class TaskListItemList {
  final int count;
  final List<TaskListItemBase> items;

  TaskListItemList({this.count, this.items});

  factory TaskListItemList.fromJson(Map<String, dynamic> json) {
    final items = json['items'] as List;
    return TaskListItemList(
        count: json['count'] as int,
        items: TaskListItemBase.listFromJson(items));
  }
}
