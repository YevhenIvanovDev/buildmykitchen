import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class BuildMyKitchenThemeData extends ButtonThemeData {
  BuildMyKitchenThemeData()
      : super(
            minWidth: 110,
            height: 48,
            buttonColor: KitchenColors.inkDark,
            disabledColor: KitchenColors.lightBlueGrey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19)));

  @override
  double getElevation(MaterialButton button) {
    if (button.elevation != null) return button.elevation!;
    return 0;
  }
}
