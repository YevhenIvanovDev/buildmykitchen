import 'package:flutter/material.dart';

class PartOfKitchen {
  int id;
  Color colorOfPart;
  final String imagePath;
  bool isActive;
  String partName;
  int price;
  double partSize;
  PartOfKitchen({
    required this.partSize,
    required this.price,
    required this.id,
    required this.colorOfPart,
    required this.imagePath,
    required this.isActive,
    required this.partName,
  });
}
