import 'package:builder_session/config/get_it.dart';
import 'package:builder_session/model/image_model.dart';
import 'package:builder_session/model/todo_model.dart';
import 'package:builder_session/model/user_model.dart';
import 'package:builder_session/service/get_data.dart';
import 'package:builder_session/service/get_image.dart';
import 'package:builder_session/service/post_login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: (config.get<SharedPreferences>().getString('token') == null)
            ? LoginPage()
            : ImageExample());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            dynamic temp = snapshot.data;

            TodoModel result = TodoModel.fromMap(temp);

            return Center(
                child: ListTile(
              title: Text(result.title),
              subtitle: Text(result.id.toString()),
            ));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getImage(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            dynamic temp = snapshot.data;

            List<ImageModel> data = List.generate(
                temp.length, (index) => ImageModel.fromMap(temp[index]));
            return ListView.builder(
              // separatorBuilder: (context, index) => Divider(),
              itemCount: data.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  subtitle: Text(data[index].url),
                  title: Text(data[index].title),
                  leading: Image.network(data[index].thumbnailUrl),
                ),
              ),
            );
          } else {
            return Center(
              child: LinearProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();

    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      labelText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await login(
                      UserModel(username: email.text, password: password.text));
                },
                child: Text('login'))
          ],
        ),
      ),
    );
  }
}
