part of 'kitchen_bloc.dart';

@immutable
abstract class KitchenState extends Equatable {
  const KitchenState();
}

class KitchenInitial extends KitchenState {
  @override
  List<Object> get props => [];
}

class KitchenMain extends KitchenState {
  // double totalPrice = 0;
  // KitchenMain(this.totalPrice);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

//class ListAndFormState extends KitchenState {}
