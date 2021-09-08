import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class KitchenCountButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  const KitchenCountButton(this.onPressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: KitchenColors.inkDark),
      onPressed: onPressed,
      child: Text('Berechnen',
          style: TextStyle(
            color: KitchenColors.corp,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.5,
          )),
    );
  }
}
