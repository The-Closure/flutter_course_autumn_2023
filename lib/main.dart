import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/secondPage': (context) => const SecondPage(),
      },
      // home: const HomePage(),
      initialRoute: '/',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          color: Colors.blue,
          shadowColor: Colors.red,
          elevation: 30,
          child: SizedBox(
            height: 550,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://m.media-amazon.com/images/I/81sMEvzsAxL.jpg',
                      width: 400,
                      height: 350,
                    ),
                    const Positioned(
                      bottom: 75,
                      left: 20,
                      child: Text(
                        'Meao',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Velit ad sint in ex qui esse anim est esse. Ad ex tempor quis id eiusmod consequat elit proident labore id elit Lorem. Anim eiusmod Lorem Lorem aute ullamco enim do elit deserunt enim ad."),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Hero(
                      tag: "animation",
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey),
                        ),
                        onPressed: () {
                          // Navigation with push()
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return const SecondPage();
                          //     },
                          //   ),
                          // );

                          // Navigation with PushReplacement
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SecondPage();
                              },
                            ),
                          );
                          // ! Black window
                          // Navigator.pop(context);
                        },
                        child: const Text("Go to Second Page"),
                      ),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey),
                        ),
                        onPressed: () {
                          // Navigation with PushNamed
                          Navigator.pushNamed(context, '/secondPage');

                          // Navigation with PushReplacementNamed
                          // Navigator.pushReplacementNamed(context, '/secondPage');
                        },
                        child: const Text("Go with Named Route")),
                  ],
                ),
                const Badge(
                  isLabelVisible: true,
                  textColor: Colors.blue,
                  backgroundColor: Colors.brown,
                  offset: Offset(10, -10),
                  label: Text("1"),
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Container(),
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Hero(
              tag: 'animation',
              child: Container(
                color: Colors.blue,
                child: const Text(
                  "Second Page",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: const Text("Go to previuos page"))
          ],
        ),
      ),
    );
  }
}
