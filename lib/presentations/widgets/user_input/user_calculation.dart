import 'package:build_my_kitchen/presentations/widgets/user_input/icon_buttons.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_icon_button.dart';
import 'package:build_my_kitchen/presentations/widgets/widget_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UserCalculation extends StatefulWidget {
  @override
  _UserCalculationState createState() => _UserCalculationState();
}

class _UserCalculationState extends State<UserCalculation> {
  final _formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _kitchenSizeController = TextEditingController();
  double? kitchenSize;
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
      print(kitchenSize);
    }
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
          child: UserIconButtons(onPress: switchItemValue),
        ),
        Container(
          width: 250,
          child: FormBuilder(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: () {
              kitchenSize = double.parse(_kitchenSizeController.text);
            },
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
        ),
        const SizedBox(
          height: 20,
        ),
        KitchenCountButton(createMapOfItems),
      ],
    );
  }
}
