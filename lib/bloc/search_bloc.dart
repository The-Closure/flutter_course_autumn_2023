import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:search_example/model/question_model.dart';
import 'package:search_example/service/getdata.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<Search>((event, emit) async {
      emit(Loading());
      dynamic temp;
      late List<QuestionModel> questions;
      try {
        temp = await perfectGetData();

        questions = List.generate(
            temp.length, (index) => QuestionModel.fromMap(temp[index]));
      } catch (e) {
        emit(NoConnection());
      }

      List<QuestionModel> result = [];

      for (var element in questions) {
        if (element.question.contains(event.label)) {
          result.add(element);
        }
      }

      if (result.isEmpty) {
        emit(NotFound());
      } else {
        emit(Success(result: result));
      }
    });
  }
}
