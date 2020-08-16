import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class MinimalUserItem extends Init$DFSQuery$ServerInfo$AllUsers {
  final String userId;
  final String displayName;
  final DateTime lastActivity;
  final bool isOnVacation;
  final bool isRetired;
  final String identity;

  MinimalUserItem(
      {this.userId,
      this.displayName,
      this.lastActivity,
      this.isOnVacation,
      this.isRetired,
      this.identity});

  // factory MinimalUserItem.fromJson(Map<String, dynamic> json) {
  //   return MinimalUserItem(
  //     userId: json['i'] as String,
  //     displayName: json['d'] as String,
  //     lastActivity: json['l'] != null ? DateTime.parse(json['l']) : null,
  //     isOnVacation: json['v'] as bool,
  //     isRetired: json['r'] as bool,
  //     identity: json['a'] as String,
  //   );
  // }

  factory MinimalUserItem.fromAllUsers(Init$DFSQuery$ServerInfo$AllUsers obj) {
    return new MinimalUserItem(
      userId: obj.i,
      displayName: obj.d,
      lastActivity: obj.l,
      isOnVacation: obj.v,
      isRetired: obj.r,
      identity: obj.a,
    );
  }

  // static List<MinimalUserItem> listFromJson(List<dynamic> json) {
  //   return json == null
  //       ? List<MinimalUserItem>()
  //       : json.map((value) => MinimalUserItem.fromJson(value)).toList();
  // }

  static List<MinimalUserItem> listFromAllUsers(
      List<Init$DFSQuery$ServerInfo$AllUsers> json) {
    return json == null
        ? List<MinimalUserItem>()
        : json.map((value) => MinimalUserItem.fromAllUsers(value)).toList();
  }
}
