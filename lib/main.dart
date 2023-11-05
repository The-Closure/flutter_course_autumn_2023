import 'package:drawer_responseve/pages/porfile_page.dart';
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple.shade400),
              child: const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfilePage();
                    },
                  ),
                );
              },
              title: const Text("Responseve"),
              leading: const Icon(Icons.person),
            ),
            ListTile(
              onTap: () {},
              title: const Text("Chat"),
              leading: const Icon(Icons.chat),
            ),
            ListTile(
              onTap: () {},
              title: const Text("Group"),
              leading: const Icon(Icons.group),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
