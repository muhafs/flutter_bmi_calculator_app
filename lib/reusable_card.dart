import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    this.onTap,
    required this.color,
    this.child,
  });

  final Color color;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(kCardMargin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kCardRadius),
        ),
        child: child,
      ),
    );
  }
}
