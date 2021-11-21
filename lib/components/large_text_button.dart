import 'package:flutter/material.dart';

import '../constants.dart';

class LargeTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  LargeTextButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20),
        color: kBottomContainerColor,
      ),
    );
  }
}
