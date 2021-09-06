import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String text;
  Information(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(color: KitchenColors.blueyGrey)),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: KitchenColors.inkDark),
      ),
    );
  }
}
