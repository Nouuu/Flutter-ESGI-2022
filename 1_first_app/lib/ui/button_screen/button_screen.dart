import 'package:first_app/ui/button_screen/statefull_color_container.dart';
import 'package:first_app/ui/button_screen/stateless_color_container.dart';
import 'package:flutter/material.dart';

const List<Color> colors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
];

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  int _statelessContainerColorIndex = 0;

  void _onFloatingActionButtonPressed() {
    setState(() {
      _statelessContainerColorIndex =
          (_statelessContainerColorIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StatefulColorContainer(),
            const SizedBox(height: 80),
            StatelessColorContainer(
                color: colors[_statelessContainerColorIndex]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        child: const Icon(Icons.color_lens_outlined),
      ),
    );
  }
}
