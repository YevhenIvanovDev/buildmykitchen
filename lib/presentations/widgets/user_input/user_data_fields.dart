import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/form_field.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class UserDataFields extends StatelessWidget {
  const UserDataFields({
    Key? key,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController phoneController,
    required TextEditingController addressController,
    required TextEditingController commentController,
  })  : _nameController = nameController,
        _emailController = emailController,
        _phoneController = phoneController,
        _addressController = addressController,
        _commentController = commentController,
        super(key: key);

  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _phoneController;
  final TextEditingController _addressController;
  final TextEditingController _commentController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'How can we reach you?',
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(fontSize: 20, color: KitchenColors.corpDarker),
        ),
        UserDetailsInputWidget(
          controller: _nameController,
          hintText: 'Name',
          labelText: 'Ihr Name',
          suffixIcon: const Icon(Icons.person),
        ),
        UserDetailsInputWidget(
            controller: _emailController,
            hintText: 'email@example.com',
            labelText: 'Your email',
            inputType: TextInputType.emailAddress,
            validator: (dynamic value) =>
                !isEmail(value! as String) ? 'Invalid Email' : null),
        UserDetailsInputWidget(
            controller: _phoneController,
            hintText: 'Telefonnummer',
            labelText: 'Ihre Telefonnummer'),
        UserDetailsInputWidget(
            controller: _addressController,
            hintText: 'Anschrift',
            labelText: 'Ihre Adresse'),
        UserDetailsInputWidget(
          maxLines: 3,
          maxLength: 200,
          hintText: 'Kommentar',
          labelText: 'Zu beachten',
          controller: _commentController,
        ),
      ],
    );
  }
}
