import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/designs/gradient_background.dart';
import 'package:build_my_kitchen/presentations/widgets/localizations/language_widgets.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BuildMyKitchen',
            style: Theme.of(context).textTheme.headline1,
          ),
          actions: [
            IconButton(
                color: KitchenColors.corp,
                onPressed: () {
                  Navigator.pushNamed(context, 'admin_screen');
                },
                icon: Icon(Icons.person))
          ],
        ),
        body: BackGroundGradient(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'Choose your language',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const IconButtonLanguage(
                        imagepath: 'assets/images/grmnflg.png'),
                    const SizedBox(width: 20),
                    const IconButtonLanguage(
                      imagepath: 'assets/images/uk.png',
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
