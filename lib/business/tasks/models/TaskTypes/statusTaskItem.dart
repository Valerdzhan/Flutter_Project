class StatusTaskItem {
  final String name;
  final String description;

  StatusTaskItem({this.name, this.description});

  factory StatusTaskItem.fromJson(Map<String, dynamic> json) {
    return StatusTaskItem(
        name: json['name'] as String,
        description: json['description'] as String);
  }

  static List<StatusTaskItem> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StatusTaskItem>()
        : json.map((value) => StatusTaskItem.fromJson(value)).toList();
  }
}
