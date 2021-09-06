import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class BackGroundGradient extends StatelessWidget {
  final Widget child;

  BackGroundGradient({
    required this.child,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          //KitchenColors.apple,
          KitchenColors.limeBright,
          KitchenColors.corp
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      )),
    );
  }
}
