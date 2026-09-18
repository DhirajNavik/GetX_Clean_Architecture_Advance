import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final int userId;
  final int id;
  final String title;
  final bool isCompleted;

  const TodoEntity({
    required this.userId,
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  TodoEntity copyWith({bool? isCompleted}) {
    return TodoEntity(
      userId: userId,
      id: id,
      title: title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object> get props => [isCompleted];
}
