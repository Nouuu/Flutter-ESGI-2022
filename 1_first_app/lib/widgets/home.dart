import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Hello World',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
