import 'package:build_my_kitchen/presentations/designs/gradient_background.dart';
import 'package:build_my_kitchen/presentations/widgets/appbar_items/get_card.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 24,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: BackGroundGradient(
          child: Column(
            children: [
              Text(
                'Unsere Kontaktdaten',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 16),
              ),
              getCard(),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/kuehlschrank.png'),
                    Image.asset('assets/images/ofen.png'),
                    Image.asset('assets/images/schrank.png'),
                    Image.asset('assets/images/spuelmaschine.png'),
                    Image.asset('assets/images/waschmaschine.png')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
