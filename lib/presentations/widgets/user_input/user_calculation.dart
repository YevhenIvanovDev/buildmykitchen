import 'package:build_my_kitchen/presentations/widgets/user_input/user_icon_button.dart';
import 'package:build_my_kitchen/presentations/widgets/widget_button.dart';
import 'package:flutter/material.dart';

class UserCalculation extends StatefulWidget {
  @override
  _UserCalculationState createState() => _UserCalculationState();
}

class _UserCalculationState extends State<UserCalculation> {
  final TextEditingController _kitchenSizeController = TextEditingController();
  final List<bool> isSelected = List.generate(6, (index) => false);
  Map<String, bool> mapOfItemsChosen = {};

  final List<String> items = [
    'Herd',
    'Hängeschränke',
    'Waschmaschine',
    'Spülmaschine',
    'Arbeitsplatte schneiden',
    'Gebrauchte Küche',
  ];

  void switchItemValue(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  }

  void createMapOfItems() {
    mapOfItemsChosen.clear();
    for (int i = 0; i < items.length; i++) {
      mapOfItemsChosen.putIfAbsent(items[i], () => isSelected[i]);
    }
  }

  void printItemsList() {
    print('hi');
  }

  @override
  void dispose() {
    isSelected.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Row(
                children: [
                  UserIconButton(
                    iconTitle: 'Herd',
                    id: 0,
                    imagePath: 'assets/images/Backofen.png',
                    onPress: switchItemValue,
                  ),
                  UserIconButton(
                    iconTitle: 'Hängeschränke',
                    id: 1,
                    imagePath: 'assets/images/Backofen.png',
                    onPress: switchItemValue,
                  ),
                  UserIconButton(
                    iconTitle: 'Waschmaschine',
                    id: 2,
                    imagePath: 'assets/images/Backofen.png',
                    onPress: switchItemValue,
                  )
                ],
              ),
              Row(
                children: [
                  UserIconButton(
                      iconTitle: 'Spülmaschine',
                      id: 3,
                      imagePath: 'assets/images/Spule.png',
                      onPress: switchItemValue),
                  UserIconButton(
                      iconTitle: 'Arbeitsplatte',
                      id: 4,
                      imagePath: 'assets/images/Spule.png',
                      onPress: switchItemValue),
                  UserIconButton(
                      iconTitle: 'Gebraucht',
                      id: 5,
                      imagePath: 'assets/images/Spule.png',
                      onPress: switchItemValue),
                ],
              )
            ],
          ),
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
          height: 20,
        ),
        KitchenCountButton(createMapOfItems),
      ],
    );
  }
}
