part of 'kitchen_bloc.dart';

@immutable
abstract class KitchenEvent extends Equatable {}

class FirstEvent extends KitchenEvent {
  int? priceOfPart;
  FirstEvent({this.priceOfPart});
  @override
  List<Object> get props => throw UnimplementedError();
}

//class SecondEvent extends KitchenEvent {}
