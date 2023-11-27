import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

getData() async {
  var url = Uri.parse('https://653e6cc99e8bd3be29df4853.mockapi.io/question');

  dynamic response = await http.get(url);

  if (response.statusCode == 200) {
    print(response);
    return response;
  } else {
    return false;
  }
}

perfectGetData() async {
  try {
    Dio dio = Dio();

    Response response =
        await dio.get('https://653e6cc99e8bd3be29df4853.mockapi.io/question');

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return false;
    }
  } catch (e) {
    // ignore: use_rethrow_when_possible
    throw e;
  }
}
