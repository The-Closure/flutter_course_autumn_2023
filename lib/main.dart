import 'package:coffee/view/builder_example_page.dart';
import 'package:coffee/view/onboardgon_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

PageController controller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FristPage()
    );
      //   home: Scaffold(
      //       body: PageView.builder(
      // itemCount: pages.length,
      // controller: controller,
      // itemBuilder: (context, index) => pages[index],
    // )));
  }
}

List<Widget> pages = [FristPage(), FristPage(), Secondpage(), HomePage()];

class Secondpage extends StatelessWidget {
  const Secondpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              print(controller.page);
              // controller.jumpTo(value);
              controller.previousPage(
                  duration: Duration(seconds: 1), curve: Curves.easeInCirc);
            },
            child: FlutterLogo()),
      ),
    );
  }
}

List<String> names = [
  "Ahmad",
  "Yaser",
  "Omar",
  "Robeen",
  "MHD",
  "Majd",
  "Dana",
  "Masa",
  "Amjad",
  "Maya",
  "Abd",
  "Obada"
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(names[index]),
          ),
        ),
        // separatorBuilder: (context, ind) => Divider(),
      ),



      // body: ListView(children: [
      //   ListTile(
      //     title: Text("Nostrud consectetur fugiat pariatur sunt incididunt cupidatat ad eiusmod."),
      //     subtitle: Text("Reprehenderit aliquip cillum incididunt cillum."),),
      //   // ,Divider(color: Colors.red,thickness: 10,indent: 2,endIndent: 10,),
      //   Divider(),

      //   ListTile(
      //     title: Text(
      //         "Nostrud consectetur fugiat pariatur sunt incididunt cupidatat ad eiusmod."),
      //     subtitle: Text("Reprehenderit aliquip cillum incididunt cillum."),
      //   ),
      // ]),
    );
  }
}
