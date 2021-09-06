import 'package:flutter/material.dart';

class UserDetailsInputWidget extends StatelessWidget {
  final String hintText, labelText;
  final TextEditingController controller;
  final TextInputType? inputType;
  String? Function(dynamic)? validator;
  Icon? suffixIcon;
  int? maxLines;
  int? maxLength;

  UserDetailsInputWidget({
    this.maxLength,
    this.maxLines,
    this.validator,
    this.inputType,
    this.suffixIcon,
    required this.controller,
    required this.hintText,
    required this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.headline2),
    );
  }
}
