import 'package:first_app/ui/button_screen/button_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';
import 'settings_screen/settings_screen.dart';

class Home extends StatefulWidget {
  final String title;

  final screens = [
    const HomeScreen(),
    const SettingsScreen(),
    const ButtonScreen(),
  ];

  Home({
    super.key,
    required this.title,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentScreenIndex = 0;

  List<Widget> get screens => widget.screens;

  String get title => widget.title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text(title),
        ),
        body: screens[_currentScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          currentIndex: _currentScreenIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radio_button_checked),
              label: 'Button',
            ),
          ],
        ));
  }

  void _onTap(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
    if (kDebugMode) {
      print('Screen index : $_currentScreenIndex');
    }
  }
}
