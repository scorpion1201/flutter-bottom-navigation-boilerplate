import 'package:flutter/material.dart';
import 'package:myapp/src/screens/settings.dart';
import 'package:myapp/src/screens/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: <Widget>[
            const HomeScreen(),
            const SettingsScreen(title: '설정'),
          ][currentIndex],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int value) => setState(() {
            currentIndex = value;
          }),
          indicatorColor: Colors.deepPurpleAccent,
          selectedIndex: currentIndex,
          destinations: const <NavigationDestination>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home, color: Colors.white),
              icon: Icon(Icons.home_outlined),
              label: '홈',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.settings, color: Colors.white),
              icon: Icon(Icons.settings_outlined),
              label: '설정',
            ),
          ],
        ),
      ),
    );
  }
}
