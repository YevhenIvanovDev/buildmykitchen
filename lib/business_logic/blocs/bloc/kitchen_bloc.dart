import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'kitchen_event.dart';
part 'kitchen_state.dart';

class KitchenBloc extends Bloc<KitchenEvent, KitchenState> {
  KitchenBloc() : super(KitchenInitial());

  @override
  Stream<KitchenState> mapEventToState(
    KitchenEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
