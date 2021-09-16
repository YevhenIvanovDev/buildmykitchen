import 'package:flutter/material.dart';

class ClientIconButton extends StatelessWidget {
  final String imagePath;
  final int id;
  final String iconName;
  Color iconColor;
  final double iconSize;
  bool isActive;
  void onPress;

  ClientIconButton(
      {required this.isActive,
      required this.imagePath,
      required this.id,
      required this.iconName,
      required this.iconSize,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        imagePath,
        color: iconColor,
      ),
      iconSize: iconSize,
      onPressed: () {
        isActive = !isActive;
      },
    );
  }
}
