import 'package:flutter/material.dart';

class StatelessColorContainer extends StatelessWidget {
  final Color color;

  const StatelessColorContainer({Key? key, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      duration: const Duration(milliseconds: 500),
    );
  }
}
