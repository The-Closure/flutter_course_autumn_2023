// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_bloc.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

class SuccessFetchTodo extends TodoState {
  List<TodoModel> todos;
  SuccessFetchTodo({
    required this.todos,
  });
}

class Error extends TodoState {}

class LoadingTodo extends TodoState {}
