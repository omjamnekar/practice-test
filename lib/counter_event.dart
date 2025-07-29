part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
