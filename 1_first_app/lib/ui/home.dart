import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: const Text('My First App'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ));
  }

  void _onTap(int index) {
    print('Tapped on item $index');
  }
}
