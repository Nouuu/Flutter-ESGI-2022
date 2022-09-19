import 'package:first_app/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.blue,
  ));
  final User toto = User(
    firstName: 'toto',
    age: 12,
  );
  final User richard = User(
    firstName: 'Richard',
  );
  print('${toto.firstName} ${toto.age}');
  print('${richard.firstName} ${richard.age}');
}
