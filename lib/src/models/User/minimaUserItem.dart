class MinimalUserItem {
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

  factory MinimalUserItem.fromJson(Map<String, dynamic> json) {
    /*
    "d": "Чудницова Анна Евгеньевна",
            "i": "01684ada36fa4c76a234facde7b47d12",
            "v": false,
            "r": false,
            "l": null,
            "a": "7e3a95564f204e22a72ba1cc0d309664",
             */
    return MinimalUserItem(
        userId: json['id'] as String,
        displayName: json['displayName'] as String,
        lastActivity: json['lastActivity'] as DateTime,
        isOnVacation: json['isOnVacation'] as bool,
        isRetired: json['isRetired'] as bool,
        identity: json['identity'] as String);
  }

  static List<MinimalUserItem> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MinimalUserItem>()
        : json.map((value) => MinimalUserItem.fromJson(value)).toList();
  }
}
