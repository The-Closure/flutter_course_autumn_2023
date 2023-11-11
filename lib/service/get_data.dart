import 'package:dio/dio.dart';

getData() async {
  Dio dio = Dio();

  Response response =
      await dio.get('https://jsonplaceholder.typicode.com/todos/1');
  print(response.statusCode);
  return response.data;
  // if(response.statusCode == 200){

  // return response;
  // }
  // else {
  //   return 'error';
  // }
}
