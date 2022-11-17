import 'package:flutter/material.dart';

class ClickableContainer extends StatelessWidget {
  final VoidCallback onPressed;

  const ClickableContainer({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
