import 'package:dio/dio.dart';

abstract class BaseService {
  Dio dio = Dio();
  String baseUrl = 'https://jsonplaceholder.typicode.com/todos';
  late Response response;
}
