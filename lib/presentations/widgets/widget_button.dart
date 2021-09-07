import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

Widget countButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(primary: KitchenColors.inkDark),
    onPressed: () {},
    child: const Text('Berechnen',
        style: TextStyle(
          color: KitchenColors.corp,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.5,
        )),
  );
}
