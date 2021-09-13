import 'package:flutter/material.dart';

Container getAvatar() {
  return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border:
              Border.all(color: Colors.lightBlueAccent.shade100, width: 1.2),
          image: DecorationImage(
              image: const AssetImage('assets/images/kontakt.jpg'),
              fit: BoxFit.cover)));
}
