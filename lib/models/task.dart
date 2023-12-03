enum Priority {
  low,
  medium,
  high,
}

class Task {
  final int id;
  final String title;
  final String? description;
  final bool? isCompleted;
  final String? date;
  final String? time;
  final Priority? priority;
  final String? reminder;

  Task(
    this.isCompleted,
    this.date,
    this.time,
    this.priority,
    this.description,
    this.reminder, {
    required this.id,
    required this.title,
  });
}
