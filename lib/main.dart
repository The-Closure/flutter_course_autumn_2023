import 'package:coffee/core/config/get_it.dart';
import 'package:coffee/pages/home_page.dart';
import 'package:coffee/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // setup();

  runApp(MyApp());
}

List<String> names = ["Abdlaziz", "Yaser", "Noor", "Abdlaziz"];

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstScreen()
    );
  }
}
String name = '';
class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(

        isThreeLine: true,
        title: Text("Adipisicing id fugiat cupidatat tempor est aute."),
        subtitle: Text(
            'Laborum veniam dolore anim minim est officia. Tempor id fugiat ad culpa est. Enim adipisicing aliqua ipsum enim id et aute ut id quis ipsum sint cupidatat. Voluptate dolor laborum ad aliquip sit consequat duis aliqua fugiat. Culpa voluptate nulla ullamco reprehenderit ea ut tempor laboris ea.'),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //       ListTile(
      //         trailing: Icon(Icons.arrow_circle_down_outlined),
      //         tileColor: const Color.fromARGB(255, 96, 94, 94),
      //         leading: CircleAvatar(
      //             child: Icon(
      //           Icons.shopify,
      //
      //           // color: Colors.red,
      //         )),
      //         title: Text('ASAP, go to java since it is the best'),
      //         subtitle: Text('app'),
      //       ),
      //     ],
      //   ),
      // ),

      // ? try to build self list tile
      // body: Column(
      //   children: [
      //     Container(
      //       child: Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 20),
      //             child: FlutterLogo(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(top: 20),
      //             child: Column(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text('ASAP, go to java since it is the best',
      //                       style: TextStyle(color: Colors.white)),
      //                 ),
      //                 Text('app', style: TextStyle(color: Colors.white))
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //       height: 100,
      //       decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 74, 71, 71),
      //           borderRadius: BorderRadius.only(
      //               bottomLeft: Radius.circular(10),
      //               bottomRight: Radius.circular(10))),
      //     )
      //   ],
      // ),

      // ? Decoration
      // body: Center(
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //             colors: [Colors.blue, Colors.blue.shade200],
      //             begin: Alignment.topRight,
      //             end: Alignment.bottomLeft),
      //         // shape: BoxShape.circle,
      //         borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(25),
      //             topRight: Radius.circular(25)),
      //         color: Colors.red,
      //         border: Border.all(color: Colors.green, width: 2)),
      //   ),
      // ),
    );
  }
}
