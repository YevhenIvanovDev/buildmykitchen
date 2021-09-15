import 'package:build_my_kitchen/business_logic/blocs/bloc/kitchen_bloc.dart';
import 'package:build_my_kitchen/presentations/widgets/user_input/user_calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestSumUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => KitchenBloc(),
      child: BlocBuilder<KitchenBloc, KitchenState>(
        builder: (context, state) {
          if (state is ListAndFormState) {
            return ListView.builder(
              itemBuilder: (context, index) => const ListTile(),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
