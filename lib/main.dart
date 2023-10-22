import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: const Text('Hello world')),
            leading: const FlutterLogo(),
            backgroundColor: Colors.orange.shade700,
            actions: const [
              FlutterLogo(),
              Center(child: Text('data')),
              FlutterLogo()
            ]),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            FlutterLogo(size: 100,),Text('data'),FlutterLogo(size: 100,)
          ],),
        ),
        backgroundColor: Color.fromRGBO(149, 217, 155, 0.649),
      ),
    );
  }
}