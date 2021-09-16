import 'package:build_my_kitchen/business_logic/blocs/bloc/kitchen_bloc.dart';
import 'package:build_my_kitchen/data/models/part_of_kitchen.dart';
import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/client_icon_button.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_icon_button.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_icon_buttons.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/input_kitchen_size.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/price_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UserCalculation extends StatefulWidget {
  @override
  _UserCalculationState createState() => _UserCalculationState();
}

class _UserCalculationState extends State<UserCalculation> {
  List<PartOfKitchen> partsOfKitchenList = [
    PartOfKitchen(
        id: 0,
        colorOfPart: KitchenColors.lightBlueGrey,
        partName: 'Herd',
        imagePath: 'assets/images/Backofen.png',
        isActive: false,
        price: 50,
        partSize: 100),
    PartOfKitchen(
        id: 1,
        colorOfPart: KitchenColors.lightBlueGrey,
        partName: 'Hängeschtänke',
        imagePath: 'assets/images/Backofen.png',
        isActive: false,
        price: 50,
        partSize: 100),
    PartOfKitchen(
        id: 2,
        colorOfPart: KitchenColors.lightBlueGrey,
        partName: 'Waschmaschine',
        imagePath: 'assets/images/Backofen.png',
        isActive: false,
        price: 50,
        partSize: 100),
    PartOfKitchen(
        id: 3,
        colorOfPart: KitchenColors.lightBlueGrey,
        partName: 'Spülmaschine',
        imagePath: 'assets/images/Spule.png',
        isActive: false,
        price: 50,
        partSize: 100),
    PartOfKitchen(
        id: 4,
        colorOfPart: KitchenColors.lightBlueGrey,
        partName: 'Arbeitsplatte schneiden',
        imagePath: 'assets/images/Spule.png',
        isActive: false,
        price: 50,
        partSize: 100),
    PartOfKitchen(
        id: 5,
        colorOfPart: KitchenColors.lightBlueGrey,
        partName: 'Gebrauchte Küche',
        imagePath: 'assets/images/Spule.png',
        isActive: false,
        price: 50,
        partSize: 100),
  ];

  final _formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _kitchenSizeController = TextEditingController();
  // double kitchenSize = 1;
  // double sizePrice = 0;
  // int counter = 0;
  // double totalPrice = 0;
  // final List<bool> isSelected = List.generate(6, (index) => false);
  // Map<String, bool> mapOfItemsChosen = {};
  // Map<String, double> mapOfControllerValue = {};
  // final List<String> items = [
  //   'Herd',
  //   'Hängeschränke',
  //   'Waschmaschine',
  //   'Spülmaschine',
  //   'Arbeitsplatte schneiden',
  //   'Gebrauchte Küche',
  // ];

  // void switchItemValue(int index) {
  //   setState(() {
  //     isSelected[index] = !isSelected[index];
  //   });
  //   BlocProvider.of<KitchenBloc>(context).add(FirstEvent());
  // }

  // void createMapOfItems() {
  //   mapOfItemsChosen.clear();
  //   mapOfControllerValue.clear();
  //   for (int i = 0; i < items.length; i++) {
  //     mapOfItemsChosen.putIfAbsent(items[i], () => isSelected[i]);
  //     mapOfControllerValue.putIfAbsent('Küchenlänge', () => kitchenSize);
  //   }
  // }

  // double countItems() {
  //   sizePrice = 0;
  //   counter = 0;
  //   sizePrice = kitchenSize * 180;
  //   isSelected.forEach((element) {
  //     if (element == true) {
  //       counter += 50;
  //     }
  //   });
  //   return totalPrice = sizePrice + counter;
  // }

  // @override
  // void dispose() {
  //   isSelected.clear();
  //   _kitchenSizeController.clear();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(4),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: partsOfKitchenList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<KitchenBloc>(context)
                        .add(FirstEvent(priceOfPart: 34
                            // partsOfKitchenList[index].price
                            ));
                  },
                  child: Center(
                    child: ClientIconButton(
                      iconSize: partsOfKitchenList[index].partSize,
                      iconColor: partsOfKitchenList[index].colorOfPart,
                      iconName: partsOfKitchenList[index].partName,
                      id: partsOfKitchenList[index].id,
                      imagePath: partsOfKitchenList[index].imagePath,
                      isActive: partsOfKitchenList[index].isActive,
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
            )), // UserIconButtons(onPress: switchItemValue),
        Container(
          width: 230,
          child: FormBuilder(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child:
                InputKitchenSize(kitchenSizeController: _kitchenSizeController),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            // if (_formKey.currentState!.validate()) {}
            // kitchenSize = double.parse(_kitchenSizeController.text);
            // createMapOfItems();
            // countItems();
            showDialog<void>(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => KitchenBloc(),
                    child: BlocBuilder<KitchenBloc, KitchenState>(
                      builder: (context, state) {
                        return AlertDialog(
                          title: Text(
                            'Die Küchenmontage beträgt ca.  €',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 24),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Abbrechen')),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, 'client_form_screen');
                              },
                              child: const Text('Zur Zusammenfassung'),
                            )
                          ],
                        );
                      },
                    ),
                  );
                });
          },
          child: Text(
            'Berechnen',
            style: TextStyle(
              color: KitchenColors.corp,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: 1.5,
            ),
          ),
          style: ElevatedButton.styleFrom(primary: KitchenColors.inkDark),
        ),
      ],
    );
  }
}
