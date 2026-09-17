class TodoEntity {
  final int userId;
  final int id;
  final String title;
  final bool isCompleted;

  TodoEntity({
    required this.userId,
    required this.id,
    required this.title,
    required this.isCompleted,
  });
}
