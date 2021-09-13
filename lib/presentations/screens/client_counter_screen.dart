import 'package:build_my_kitchen/business_logic/blocs/bloc/kitchen_bloc.dart';
import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/widgets/app_info/information.dart';
import 'package:build_my_kitchen/presentations/widgets/appbar_items/back_button.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientCounterScreen extends StatefulWidget {
  static const routeName = 'client_counter_screen';
  @override
  _ClientCounterScreenState createState() => _ClientCounterScreenState();
}

class _ClientCounterScreenState extends State<ClientCounterScreen> {
  String introText =
      'Bitte wählen Sie die gewünschten Leistungen des Handwerkers aus.\nBerechnen Sie den Montagepreis!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BuildMyKitchen',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: const BackAppBarButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Information(introText),
              UserCalculation(),
            ],
          ),
        ),
      ),
    );
  }
}
