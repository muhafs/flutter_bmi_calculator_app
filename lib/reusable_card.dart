import 'package:flutter/material.dart';

const double cardMargin = 15;
const double cardRadius = 10;

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color, this.child});

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(cardMargin),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: child,
    );
  }
}
