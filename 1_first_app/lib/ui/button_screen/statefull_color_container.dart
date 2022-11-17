import 'package:flutter/material.dart';

import 'button_screen.dart';

class StatefulColorContainer extends StatefulWidget {
  const StatefulColorContainer({Key? key}) : super(key: key);

  @override
  State<StatefulColorContainer> createState() => _StatefulColorContainerState();
}

class _StatefulColorContainerState extends State<StatefulColorContainer> {
  int _colorIndex = 0;
  int _borderColorIndex = (colors.length / 2).ceil();

  void _onGestureTap() {
    setState(() {
      _colorIndex = (_colorIndex + 1) % colors.length;
      _borderColorIndex = (_borderColorIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onGestureTap,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: colors[_colorIndex],
          border: Border.all(
            color: colors[_borderColorIndex],
            width: 5.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
