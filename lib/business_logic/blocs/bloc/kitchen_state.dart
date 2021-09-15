part of 'kitchen_bloc.dart';

@immutable
abstract class KitchenState extends Equatable {
  @override
  List<Object> get props => [];
}

class KitchenInitial extends KitchenState {}

class ListAndFormState extends KitchenState {}
