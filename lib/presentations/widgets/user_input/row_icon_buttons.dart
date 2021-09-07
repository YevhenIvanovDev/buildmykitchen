import 'package:build_my_kitchen/presentations/widgets/user_input/user_icon_button.dart';
import 'package:flutter/material.dart';

class RowIconButtons extends StatelessWidget {
  final UserIconButton userIconButton1;
  final UserIconButton userIconButton2;
  final UserIconButton userIconButton3;

  const RowIconButtons({
    required this.userIconButton1,
    required this.userIconButton2,
    required this.userIconButton3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          userIconButton1,
          const Spacer(),
          userIconButton2,
          const Spacer(),
          userIconButton3,
        ],
      ),
    );
  }
}
