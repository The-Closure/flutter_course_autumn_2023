import 'package:dio/dio.dart';

getImage() async {
  Dio dio = Dio();

  Response response =
      await dio.get('https://jsonplaceholder.typicode.com/photos');
  return response.data;
}
