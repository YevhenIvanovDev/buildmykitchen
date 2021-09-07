import 'package:flutter/material.dart';

class IconButtonLanguage extends StatelessWidget {
  final String imagepath;
  const IconButtonLanguage({
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
          onPressed: () {
            Navigator.pushNamed(context, 'client_counter_screen');
          },
          icon: Image.asset(imagepath)),
    );
  }
}
