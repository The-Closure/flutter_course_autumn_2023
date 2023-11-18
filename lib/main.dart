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
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double sliderValue = 0;
  bool isChecked = false;
  String option1 = "RED";
  String option2 = "BLUE";
  String favoriteColor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 500,
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    TextFormField(
                      validator: (String? text) {
                        if (text!.length < 10) {
                          return "please enter more characters";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const Spacer(),
                    TextFormField(
                      validator: (String? text) {
                        if (text!.length < 10) {
                          return "please enter more characters";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const Spacer(),
                    MaterialButton(
                        minWidth: sliderValue * 20,
                        height: 50,
                        color: Colors.blue,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print("is valid");
                          } else {
                            print("not valid");
                          }
                        },
                        child: const Text("Sign In"))
                  ],
                ),
              ),
            ),
            Slider(
              thumbColor: Colors.red,
              activeColor: Colors.orange,
              inactiveColor: Colors.yellow,
              label: sliderValue.toString(),
              divisions: 10,
              min: 0,
              max: 10,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text(
              sliderValue.toInt().toString(),
              style: const TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const SimpleDialog(
                            title: Text("Simple Dialog"),
                            children: [
                              Text("Hello I am Simple Dialog"),
                            ],
                          );
                        });
                  },
                  child: const Text("Show Simple Dialog"),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Close"),
                              ),
                              const SizedBox(width: 20),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Conform"),
                              ),
                            ],
                            title: const Text("Alert Dialog"),
                            content: const Text("Hello I am Alert Dialog"),
                          );
                        });
                  },
                  child: const Text("Show Alert Dialog"),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AboutDialog(
                            applicationName: "Flutter App",
                            applicationIcon: Icon(Icons.facebook),
                            applicationLegalese: "Legalese",
                            applicationVersion: "vsersion 1.0.0",
                          );
                        });
                  },
                  child: const Text("Show About Dialog"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 500,
                      width: 500,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text("Show bottom Sheet"),
            ),
            const ExpansionTile(
              title: Text("Expansion Tile"),
              subtitle: Text("I am Expansion Tile"),
              leading: Icon(Icons.facebook),
              // trailing: Text("Hello"),
              children: [
                Text("Flutter"),
                Text("Flutter"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                const Text("Check"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("RED"),
                Radio(
                  value: option1,
                  groupValue: favoriteColor,
                  onChanged: (String? value) {
                    setState(() {
                      favoriteColor = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("BLUE"),
                Radio(
                  value: option2,
                  groupValue: favoriteColor,
                  onChanged: (String? value) {
                    setState(() {
                      favoriteColor = value!;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
