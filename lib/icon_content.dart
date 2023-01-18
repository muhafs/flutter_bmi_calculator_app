import 'package:flutter/material.dart';

const double iconSize = 80;
const double gapSize = 15;

const double fontSize = 18;
const Color fontColor = Color(0xFF8D8E98);

class IconContent extends StatelessWidget {
  const IconContent(this.text, {super.key, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: gapSize,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: fontSize,
            color: fontColor,
          ),
        )
      ],
    );
  }
}
