import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String text;
  Information(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(color: KitchenColors.blueyGrey)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: KitchenColors.inkDark, fontSize: 16),
            ),
          ),
          Positioned(
              right: 10,
              top: 30,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'i',
                    style: TextStyle(
                        color: KitchenColors.inkDark,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: KitchenColors.appleBright),
              )),
        ],
      ),
    );
  }
}
