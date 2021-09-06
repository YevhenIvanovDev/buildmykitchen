import 'package:build_my_kitchen/presentations/designs/theme_data.dart';
import 'package:build_my_kitchen/presentations/screens/admin_screen.dart';
import 'package:build_my_kitchen/presentations/screens/client_counter_screen.dart';
import 'package:build_my_kitchen/presentations/screens/client_form_screen.dart';
import 'package:build_my_kitchen/presentations/screens/language_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(KitchenApp());
}

class KitchenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BuildMyKitchen',
      theme: themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => LanguageScreen(),
        ClientFormScreen.routeName: (context) => ClientFormScreen(),
        AdminScreen.routeName: (context) => AdminScreen(),
        ClientCounterScreen.routeName: (context) => ClientCounterScreen(),
      },
    );
  }
}
