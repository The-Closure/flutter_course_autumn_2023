import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:search_example/model/todo_model.dart';
import 'package:search_example/service/todo_service.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<GetTodos>((event, emit) async {
      emit(LoadingTodo());

      try {
        List temp = await TodoServiceImp().getAllTodo();

        if (temp.isEmpty) {
          emit(Error());
        } else {
          emit(SuccessFetchTodo(todos: temp as List<TodoModel>));
        }
      } catch (e) {
        emit(Error());
      }
    });
  }
}
