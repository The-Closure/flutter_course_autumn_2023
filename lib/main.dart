// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LoginPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  PageController pageController = PageController(initialPage: 0);
  List items = [
    Container(
      height: 300,
      color: Colors.yellow,
      child: const Center(
        child: Text(
          "1",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 300,
      color: Colors.brown,
      child: const Center(
        child: Text(
          "2",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 300,
      color: Colors.indigoAccent,
      child: const Center(
        child: Text(
          "3",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 300,
      color: Colors.green,
      child: const Center(
        child: Text(
          "4",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Container(
      height: 300,
      color: Colors.white,
      child: const Center(
        child: Text(
          "5",
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();

    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Center(
        child: CustomeBox(
          myColors: [Colors.blue.shade100, Colors.blue.shade300],
          height: 500,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  'Log In Page',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: false,
                    decoration: const InputDecoration(
                        // icon: FlutterLogo(),
                        label: Icon(Icons.email),
                        // suffixIcon: Icon(Icons.remove_red_eye),
                        // labelText: 'Username',
                        // prefix: Icon(Icons.email),
                        helperText: 'I Swear this is a email',
                        hintText: 'email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                    controller: username,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        // icon: FlutterLogo(),
                        label: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        // labelText: 'Username',
                        // prefix: Icon(Icons.email),
                        helperText: 'I Swear this is a password',
                        hintText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                    controller: password,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print(
                          'this is my username : ${username.text}   this is my password : ${password.text}');
                    },
                    child: const Text('Press me')),
              ),
              CustomButton(
                  ontap: () {},
                  color: Colors.blue.shade300,
                  string: 'My Awesome')
            ],
          ),
        ),
      ),
    );
  }
}

class CustomeBox extends StatelessWidget {
  List<Color> myColors;
  double width;
  double height;
  Widget child;
  CustomeBox({
    Key? key,
    required this.myColors,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: myColors),
          borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}

class CustomButton extends StatelessWidget {
  dynamic ontap;
  String string;
  Color color;
  CustomButton({
    Key? key,
    required this.ontap,
    required this.string,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 317,
        height: 54,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Center(
          child: Text(
            string,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
