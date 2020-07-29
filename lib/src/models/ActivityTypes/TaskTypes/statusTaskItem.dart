class StatusTaskItem {
  final String name;
  final String dictionary;

  StatusTaskItem({this.name, this.dictionary});

  factory StatusTaskItem.fromJson(Map<String, dynamic> json) {
    return StatusTaskItem(
        name: json['name'] as String, dictionary: json['dictionary'] as String);
  }

  static List<StatusTaskItem> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StatusTaskItem>()
        : json.map((value) => StatusTaskItem.fromJson(value)).toList();
  }
}
