import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/pages/home_page.dart';
import 'package:provider_test/pages/settings.dart';
import 'package:provider_test/provider/counter_provider.dart';
import 'package:provider_test/provider/share_data_provider.dart';
import 'package:provider_test/provider/theme_provider.dart';
import 'package:provider_test/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ShareDataProvider()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: context.watch<ThemeProvider>().theme,
          home: const CorePage(),
        );
      }),
    );
  }
}

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  bool isDark = false;
  List pages = [
    const HomePage(),
    SettingsPage(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value: context.watch<ThemeProvider>().isDarkTheme,
            onChanged: (_) {
              context.read<ThemeProvider>().switchingTheme();
            },
          ),
        ],
        title: const Text("Theme Example"),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ]),
    );
  }
}
