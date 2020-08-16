enum UserAction {
  Read, // Прочтен
  Examined // Ознакомлен
}

class UserActionItem {
  final String documentId;
  final DateTime whenDone;
  final UserAction state;

  UserActionItem({this.documentId, this.whenDone, this.state});

  factory UserActionItem.fromJson(Map<String, dynamic> json) {
    return UserActionItem(
        documentId: json['documentId'] as String,
        whenDone: json['whenDone'] as DateTime,
        state: json['state'] as UserAction);
  }
}
