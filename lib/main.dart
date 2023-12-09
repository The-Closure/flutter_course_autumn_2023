import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double padding = 0;
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.only(top: padding),
            duration: const Duration(seconds: 2),
            child: const Text(
              "Hello FLutter",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                padding = 100;
              });
            },
            child: const Text("Animate Padding"),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: 1,
            ),
            duration: const Duration(
              seconds: 3,
            ),
            builder: (BuildContext context, double value, Widget? child) {
              return Opacity(
                opacity: value,
                child: Padding(
                  padding: EdgeInsets.only(top: value * 50),
                  child: child,
                ),
              );
            },
            child: const Text(
              "Tween Animation",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
