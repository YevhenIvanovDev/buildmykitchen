import 'package:build_my_kitchen/business_logic/blocs/bloc/kitchen_bloc.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/request_form.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/request_sum_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        leading: const BackButton(),
        centerTitle: true,
        title: Text('Send a request',
            style: Theme.of(context).textTheme.headline1),
      ),
      body: BlocProvider(
        create: (context) => KitchenBloc(),
        child: Column(
          children: [
            RequestSumUp(),
            RequestForm(),
          ],
        ),
      ),
    );
  }
}
