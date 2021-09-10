import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/designs/gradient_background.dart';
import 'package:build_my_kitchen/presentations/designs/theme_data.dart';
import 'package:build_my_kitchen/presentations/widgets/appbar_items/drawer.dart';
import 'package:build_my_kitchen/presentations/widgets/localizations/language_widgets.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: KitchenColors.corp),
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
                icon: const Icon(Icons.person)),
          ],
        ),
        drawer: MyDrawer(),
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
                    IconButtonLanguage(imagepath: 'assets/images/grmnflg.png'),
                    const SizedBox(width: 20),
                    IconButtonLanguage(
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
