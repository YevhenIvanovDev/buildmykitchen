import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ModelUserCalculation {
  final _formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _kitchenSizeController = TextEditingController();

  double totalPrice = 0;
  int counter = 0;
  double kitchenSize = 1;
  double sizePrice = 0;
  List<bool> isSelected = List.generate(6, (index) => false);
  Map<String, bool> mapOfItemsChosen = {};
  Map<String, double> mapOfControllerValue = {};
  List<String> items = [
    'Herd',
    'Hängeschränke',
    'Waschmaschine',
    'Spülmaschine',
    'Arbeitsplatte schneiden',
    'Gebrauchte Küche',
  ];

  ModelUserCalculation(
      {required this.counter,
      required this.isSelected,
      required this.items,
      required this.kitchenSize,
      required this.mapOfControllerValue,
      required this.mapOfItemsChosen,
      required this.sizePrice,
      required this.totalPrice});

  void switchItemValue(int index) {
    isSelected[index] = !isSelected[index];
    // BlocProvider.of<KitchenBloc>(context).add(FirstEvent());
  }

  void createMapOfItems() {
    mapOfItemsChosen.clear();
    mapOfControllerValue.clear();
    for (int i = 0; i < items.length; i++) {
      mapOfItemsChosen.putIfAbsent(items[i], () => isSelected[i]);
      mapOfControllerValue.putIfAbsent('Küchenlänge', () => kitchenSize);
    }
  }

  double countItems() {
    sizePrice = 0;
    counter = 0;
    sizePrice = kitchenSize * 180;
    isSelected.forEach((element) {
      if (element == true) {
        counter += 50;
      }
    });
    return totalPrice = sizePrice + counter;
  }
}
