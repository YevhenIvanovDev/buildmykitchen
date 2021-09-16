import 'package:build_my_kitchen/services/auth_service_anon.dart';
import 'package:flutter/material.dart';

class IconButtonLanguage extends StatelessWidget {
  final AuthServiceAnon _auth = AuthServiceAnon();
  final String imagepath;
  IconButtonLanguage({
    required this.imagepath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
      child: IconButton(
          iconSize: 20.0,
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('Anon couldnt sign in');
            } else {
              print('Anon signed in');
            }

            Navigator.pushNamed(context, 'client_counter_screen');
          },
          icon: Image.asset(imagepath)),
    );
  }
}
