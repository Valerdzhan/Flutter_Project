import 'package:queries/collections.dart';

class MinimalUserItem {
  final String userId;
  final String displayName;
  final DateTime lastActivity;
  final bool isOnVacation;
  final bool isRetired;
  final Dictionary<String, String> identity;

  MinimalUserItem({
    this.userId,
    this.displayName,
    this.lastActivity,
    this.isOnVacation,
    this.isRetired,
    this.identity
  });

  factory MinimalUserItem.formJson(Map<String, dynamic> json) {
    return MinimalUserItem(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      lastActivity: json['lastActivity'] as DateTime,
      isOnVacation: json['isOnVacation'] as bool,
      isRetired: json['isRetired'] as bool,
      identity: json['identity'] as Dictionary<String, String>
    );
  }
}
