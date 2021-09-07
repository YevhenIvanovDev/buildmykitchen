import 'package:build_my_kitchen/presentations/widgets/user_input/row_icon_buttons.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_icon_button.dart';
import 'package:build_my_kitchen/presentations/widgets/widget_button.dart';
import 'package:flutter/material.dart';

class UserCalculation extends StatefulWidget {
  @override
  _UserCalculationState createState() => _UserCalculationState();
}

class _UserCalculationState extends State<UserCalculation> {
  final UserIconButton userIconButtonHerd =
      const UserIconButton(id: 1, imagePath: 'assets/images/Backofen.png');
  final UserIconButton userIconButtonHaenge =
      const UserIconButton(id: 2, imagePath: 'assets/images/Backofen.png');
  final UserIconButton userIconButtonWaMa =
      const UserIconButton(id: 3, imagePath: 'assets/images/Backofen.png');
  final UserIconButton userIconButtonSpuel =
      const UserIconButton(id: 4, imagePath: 'assets/images/Spule.png');
  final UserIconButton userIconButtonArb =
      const UserIconButton(id: 5, imagePath: 'assets/images/Spule.png');
  final UserIconButton userIconButtonGebr =
      const UserIconButton(id: 6, imagePath: 'assets/images/Spule.png');

  TextEditingController _kitchenSizeController = TextEditingController();

  // Map<String, dynamic> userRequestData = {
  //   'Anschluss Herd': userIconButtonHerd,
  // };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowIconButtons(
          userIconButton1: userIconButtonHerd,
          userIconButton2: userIconButtonHaenge,
          userIconButton3: userIconButtonWaMa,
        ),
        RowIconButtons(
          userIconButton1: userIconButtonSpuel,
          userIconButton2: userIconButtonArb,
          userIconButton3: userIconButtonGebr,
        ),
        Container(
          width: 250,
          child: TextFormField(
            controller: _kitchenSizeController,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Die Küchenlänge soll mindestens 1m sein';
              }
              return null;
            },
            decoration: const InputDecoration(
                hintText: 'in Meter',
                labelText: 'Wie lang ist Ihre Küche?',
                suffixIcon: Icon(Icons.linear_scale)),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        countButton(),
      ],
    );
  }
}
