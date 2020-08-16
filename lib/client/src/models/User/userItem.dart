import 'package:myapp/client/src/models/User/userActionItem.dart';
import 'package:myapp/client/src/models/User/vacation.dart';
import 'package:queries/collections.dart';

class UserItemType {
  final String userId;
  final String displayName;
  final DateTime created;
  final String jobTitle;
  final String department;
  final String orgUnit;
  final String email;
  final bool isRetired;
  final DateTime retiredDate;
  final String photoUrl;
  final DateTime astActivity;
  final int activityCount; // = 0;
  final Dictionary<String, String>
      identity; // = new Dictionary<String, String>();
  final Vacation vacation;
  final String phone;
  final String userAgent;
  final List<UserActionItem> actions; // = new List<UserActionItem>();
  final int employeeId;
  final int orgUnitId;

  UserItemType(
      {this.userId,
      this.displayName,
      this.created,
      this.jobTitle,
      this.department,
      this.orgUnit,
      this.email,
      this.isRetired,
      this.retiredDate,
      this.photoUrl,
      this.astActivity,
      this.activityCount = 0,
      this.identity,
      this.vacation,
      this.phone,
      this.userAgent,
      this.actions,
      this.employeeId,
      this.orgUnitId});

  factory UserItemType.fromJson(Map<String, dynamic> json) {
    return UserItemType(
        userId: json['userId'] as String,
        displayName: json['displayName'] as String,
        created: json['created'] as DateTime,
        jobTitle: json['jobTitle'] as String,
        department: json['department'] as String,
        orgUnit: json['orgUnit'] as String,
        email: json['email'] as String,
        isRetired: json['isRetired'] as bool,
        retiredDate: json['retiredDate'] as DateTime,
        photoUrl: json['photoUrl'] as String,
        astActivity: json['astActivity'] as DateTime,
        identity: json['identity'] as Dictionary<String, String>,
        vacation: json['vacation'] as Vacation,
        phone: json['phone'] as String,
        userAgent: json['userAgent'] as String,
        employeeId: json['employeeId'] as int,
        orgUnitId: json['orgUnitId'] as int,
        actions:
            json['actions'].map((i) => UserActionItem.fromJson(i)).toList());
  }
}
