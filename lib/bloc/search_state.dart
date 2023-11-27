// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

class Loading extends SearchState {}

class Success extends SearchState {
  List<QuestionModel> result;
  Success({
    required this.result,
  });
}

class NotFound extends SearchState {}

class NoConnection extends SearchState {}
