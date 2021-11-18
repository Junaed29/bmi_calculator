import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String type;

  IconContent({this.icon, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          type,
          style: const TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
