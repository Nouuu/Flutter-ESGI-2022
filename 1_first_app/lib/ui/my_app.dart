import 'package:first_app/ui/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),
      ),
      home: Home(
        title: 'My first app',
      ),
    );
  }
}
