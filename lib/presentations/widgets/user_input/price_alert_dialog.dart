import 'package:flutter/material.dart';

class PriceAlertDialog extends StatelessWidget {
  const PriceAlertDialog({
    Key? key,
    required this.totalPrice,
  }) : super(key: key);

  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Die Küchenmontage beträgt ca. $totalPrice €',
        style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 24),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Abbrechen')),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'client_form_screen');
          },
          child: const Text('Zur Zusammenfassung'),
        )
      ],
    );
  }
}
