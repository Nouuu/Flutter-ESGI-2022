import 'package:flutter/material.dart';

class StatelessColorContainer extends StatelessWidget {
  final Color color;

  const StatelessColorContainer({Key? key, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 160.0,
      height: 160.0,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: color,
          width: 5.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      duration: const Duration(milliseconds: 500),
    );
  }
}
