import 'package:builder_session/config/get_it.dart';
import 'package:builder_session/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

// String token = '';
login(UserModel user) async {
  Dio dio = Dio();

  Response response = await dio.post(
    'https://dummyjson.com/auth/login',
    data: user.toJson(),
    options: Options(
      headers: {'Content-Type': 'application/json'},
    ),
  );

  if (response.statusCode == 200) {
    config.get<SharedPreferences>().setString('token', response.data['token']);
    print(response.data);
  } else {
    print('error');
  }
}
