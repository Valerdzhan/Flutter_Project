import 'package:flutter/material.dart';
import 'package:myapp/models/ActivityTypes/TaskTypes/TaskListItemBase.dart';

class TaskListItemList {
  final int count;
  final List<TaskListItemBase> items;

  TaskListItemList({this.count, this.items});

  factory TaskListItemList.fromJson(Map<String, dynamic> json) {
    final items = json['items'] as List;
    return TaskListItemList(
        count: json['count'] as int,
        items: items.map((i) => TaskListItemBase.fromJson(i)).toList()
    );
        //;items as List<TaskListItemBase> //.map<TaskListItemBase>((item) => TaskListItemBase.fromJson(item)));
  }
}
