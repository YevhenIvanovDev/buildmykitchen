import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  static const routeName = 'admin_screen';

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Adminbereich',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: KitchenColors.corp,
        ),
      ),
      body: Container(),
    );
  }
}
