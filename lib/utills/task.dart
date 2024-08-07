class Task {
  String title;
  DateTime dueDate;
  bool isCompleted;

  Task({required this.title, required this.dueDate, this.isCompleted = false});

  Map<String, dynamic> toJson() => {
    'title': title,
    'dueDate': dueDate.toIso8601String(),
    'isCompleted': isCompleted,
  };

  static Task fromJson(Map<String, dynamic> json) => Task(
    title: json['title'],
    dueDate: DateTime.parse(json['dueDate']),
    isCompleted: json['isCompleted'],
  );
}