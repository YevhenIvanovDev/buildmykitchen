import 'package:flutter/material.dart';

class InputKitchenSize extends StatelessWidget {
  const InputKitchenSize({
    Key? key,
    required TextEditingController kitchenSizeController,
  })  : _kitchenSizeController = kitchenSizeController,
        super(key: key);

  final TextEditingController _kitchenSizeController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
