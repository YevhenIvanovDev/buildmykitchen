import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/request_form.dart';
import 'package:flutter/material.dart';

class ClientFormScreen extends StatefulWidget {
  static const routeName = 'client_form_screen';
  @override
  _ClientFormScreenState createState() => _ClientFormScreenState();
}

class _ClientFormScreenState extends State<ClientFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: KitchenColors.corp,
        ),
        centerTitle: true,
        title: Text('Send a request',
            style: Theme.of(context).textTheme.headline1),
      ),
      body: Column(
        children: [
          RequestForm(),
        ],
      ),
    );
  }
}
