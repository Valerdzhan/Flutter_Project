import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class TaskListItemBase extends UserTasks$DFSQuery$UserTasks$Items {
  // final String taskId;
  // final String taskType;
  // final bool hasChildren;
  // final String actor;
  // final DateTime dueDate;
  // final DocumentDescriptor documentLastVersion;
  // final String state;
  // final String status;
  // final String note;
  // // final DateTime whenCreated;
  // // final DateTime whenSubmitted;
  // // final String editor;
  // // final DateTime whenEdited;
  // // final String traceId;
  // final DocumentListItemBase documentItem;
  // // final DateTime whenStatusEdited;
  // // final String statusEditor;
  // // final bool isPersonalReview;
  // // final SubTasks subTasks = new SubTasks();

  // // final IEnumerable<String> aCL = new HashSet<String>();

  // // /// <summary>Дочерние резолюции</summary>
  // // final IEnumerable<dynamic> resolutions = new List<dynamic>();

  // // /// <summary>Контексты дочерних резолюций</summary>
  // // final IEnumerable<dynamic> resolutionContexts = new List<dynamic>();
  // // final IEnumerable<dynamic> taskContexts = new List<dynamic>();

  // // /// <summary>Признак завершения всех дочерние резолюции (либо направлен отчет)</summary>
  // // final bool resolutionsFinished;

  // // /// <summary>Последний коментарий</summary>
  // // final String lastActorPost;
  // // final String lastPostAuthor;
  // // final String statusComment;

  // TaskListItemBase(
  //     {this.taskId,
  //     this.taskType,
  //     this.documentLastVersion,
  //     this.actor,
  //     this.documentItem,
  //     this.dueDate,
  //     this.hasChildren,
  //     this.note,
  //     this.state,
  //     this.status});

  // factory TaskListItemBase.fromJson(Map<String, dynamic> json) {
  //   return TaskListItemBase(
  //       taskId: json['id'] as String,
  //       taskType: json['taskType'] as String,
  //       hasChildren: json['hasChildren'] as bool,
  //       actor: json['actorId'] as String,
  //       dueDate: json['dueDate'] as DateTime,
  //       documentLastVersion:
  //           DocumentDescriptor.fromJson(json['documentLastVersion']),
  //       state: json['state'] as String,
  //       status: json['status'] as String,
  //       note: json['note'] as String);
  // }

  // static List<TaskListItemBase> listFromJson(List<dynamic> json) {
  //   return json == null
  //       ? List<TaskListItemBase>()
  //       : json.map((value) => TaskListItemBase.fromJson(value)).toList();
  // }
}
