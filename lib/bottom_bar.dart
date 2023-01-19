import 'package:flutter/material.dart';

import 'constants.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomBarColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomBarHeight,
        child: Center(
          child: Text(
            title,
            style: kBottomBarTextStyle,
          ),
        ),
      ),
    );
  }
}
