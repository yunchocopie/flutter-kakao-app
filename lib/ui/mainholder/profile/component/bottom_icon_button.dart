import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  const BottomIconButton({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12
          ),
        )
      ],
    );
  }
}
