import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  final int userId;
  final int id;
  final String title;
  @JsonKey(name: 'completed')
  final bool isCompleted;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  TodoEntity toEntity() => TodoEntity(
    userId: userId,
    id: id,
    title: title,
    isCompleted: isCompleted,
  );
}
