import 'package:search_example/model/todo_model.dart';
import 'package:search_example/service/base_service.dart';

abstract class TodoService extends BaseService {
  Future<List<TodoModel>> getAllTodo();
  Future<TodoModel> getOneTodo(String id);
  createOneTodo(TodoModel todo);
  updateTodo(String id, TodoModel todo);
}

class TodoServiceImp extends TodoService {
  @override
  createOneTodo(TodoModel todo) {
    // TODO: implement createOneTodo
    throw UnimplementedError();
  }

  @override
  Future<List<TodoModel>> getAllTodo() async {
    try {
      response = await dio.get(baseUrl);
      if (response.statusCode == 200) {
        dynamic temp = response.data;
        List<TodoModel> todos = List.generate(
            temp.length, (index) => TodoModel.fromMap(temp[index]));
        return todos;
      } else {
        return [];
      }
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  @override
  Future<TodoModel> getOneTodo(String id) {
    // TODO: implement getOneTodo
    throw UnimplementedError();
  }

  @override
  updateTodo(String id, TodoModel todo) {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }
}
