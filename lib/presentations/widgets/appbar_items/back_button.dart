import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class BackAppBarButton extends StatelessWidget {
  const BackAppBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(Icons.arrow_back),
      color: KitchenColors.corp,
    );
  }
}
