import 'package:build_my_kitchen/business_logic/blocs/bloc/kitchen_bloc.dart';
import 'package:build_my_kitchen/presentations/designs/colors.dart';
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
  final _formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _kitchenSizeController = TextEditingController();
  double kitchenSize = 1;
  double sizePrice = 0;
  int counter = 0;
  double totalPrice = 0;
  final List<bool> isSelected = List.generate(6, (index) => false);
  Map<String, bool> mapOfItemsChosen = {};
  Map<String, double> mapOfControllerValue = {};
  final List<String> items = [
    'Herd',
    'Hängeschränke',
    'Waschmaschine',
    'Spülmaschine',
    'Arbeitsplatte schneiden',
    'Gebrauchte Küche',
  ];

  //ADD Bloc
  void switchItemValue(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
    BlocProvider.of<KitchenBloc>(context).add(FirstEvent());
  }

  void createMapOfItems() {
    mapOfItemsChosen.clear();
    mapOfControllerValue.clear();
    for (int i = 0; i < items.length; i++) {
      mapOfItemsChosen.putIfAbsent(items[i], () => isSelected[i]);
      mapOfControllerValue.putIfAbsent('Hängeschränke', () => kitchenSize);
      BlocProvider.of<KitchenBloc>(context).add(SecondEvent());
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

  @override
  void dispose() {
    isSelected.clear();
    _kitchenSizeController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => KitchenBloc(),
      child: BlocBuilder<KitchenBloc, KitchenState>(
        builder: (context, state) {
          if (state is KitchenInitial) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: UserIconButtons(onPress: switchItemValue),
                ),
                Container(
                  width: 230,
                  child: FormBuilder(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: InputKitchenSize(
                        kitchenSizeController: _kitchenSizeController),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                    kitchenSize = double.parse(_kitchenSizeController.text);
                    createMapOfItems();
                    countItems();
                    showDialog<void>(
                        context: context,
                        builder: (context) {
                          return PriceAlertDialog(totalPrice: totalPrice);
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
                  style:
                      ElevatedButton.styleFrom(primary: KitchenColors.inkDark),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
