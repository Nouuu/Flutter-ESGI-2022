import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  static const List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.indigo,
    Colors.brown,
    Colors.grey,
  ];

  int _colorIndex = 0;
  int _borderColorIndex = (_colors.length / 2).ceil();

  void _onTap() {
    setState(() {
      _colorIndex = (_colorIndex + 1) % _colors.length;
      _borderColorIndex = (_borderColorIndex + 1) % _colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _onTap,
        child: Container(
          width: 160.0,
          height: 160.0,
          decoration: BoxDecoration(
            color: _colors[_colorIndex],
            border: Border.all(
              color: _colors[_borderColorIndex],
              width: 5.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
