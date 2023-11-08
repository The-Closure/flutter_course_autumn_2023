import 'package:flutter/material.dart';
import 'package:quiz_app/screen/chat_page.dart';
import 'package:quiz_app/screen/homepage.dart';
import 'package:quiz_app/screen/profile_page.dart';
import 'package:quiz_app/screen/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: NavigationBar(
          // backgroundColor: Colors.blue,
          // surfaceTintColor: Colors.red,
          animationDuration: Duration(seconds: 3),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
          destinations: [
            NavigationDestination(
                tooltip: 'Aliqua ad elit pariatur labore.',
                icon: Icon(Icons.home),
                label: 'Home',
                selectedIcon: Icon(Icons.facebook)),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
            NavigationDestination(icon: Icon(Icons.chat), label: 'Chat')
          ],
        ));
  }
}

List<Widget> pages = [HomePage(), ProfilePage(), SettingPage(), ChatPage()];
