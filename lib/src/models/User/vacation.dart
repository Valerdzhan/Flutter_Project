class Vacation {
  final DateTime from;
  final DateTime to;
  final String description;

  Vacation({this.from, this.to, this.description});

  factory Vacation.fromJson(Map<String, dynamic> json) {
    return Vacation(
      from: json['from'] as DateTime,
      to: json['to'] as DateTime,
      description: json['description'] as String
    );
  }
}
