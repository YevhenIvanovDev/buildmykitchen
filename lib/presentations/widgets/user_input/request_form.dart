import 'package:build_my_kitchen/presentations/widgets/user_input/user_data_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RequestForm extends StatefulWidget {
  @override
  _RequestFormState createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  final GlobalKey _formKey = GlobalKey();
  final TextEditingController _commentController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: UserDataFields(
            nameController: _nameController,
            emailController: _emailController,
            phoneController: _phoneController,
            addressController: _addressController,
            commentController: _commentController),
      ),
    );
  }
}
