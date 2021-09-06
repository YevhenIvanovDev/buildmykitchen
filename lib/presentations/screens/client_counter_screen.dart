import 'package:build_my_kitchen/presentations/widgets/app_info/information.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_calculation.dart';
import 'package:flutter/material.dart';

class ClientCounterScreen extends StatefulWidget {
  static const routeName = 'client_counter_screen';
  @override
  _ClientCounterScreenState createState() => _ClientCounterScreenState();
}

class _ClientCounterScreenState extends State<ClientCounterScreen> {
  String introText =
      'Bitte wählen Sie die gewünschten Leistungen des Handwerkers aus.\n Berechnen Sie den Montagepreis';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BuildMyKitchen',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Column(
        children: [
          Information(introText),
          Expanded(
            child: Row(),
            flex: 1,
          ),
          UserCalculation(),
        ],
      ),
    );
  }
}
