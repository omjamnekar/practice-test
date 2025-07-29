import 'package:equatable/equatable.dart';
import "package:flutter_bloc/flutter_bloc.dart";
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
    on<IncrementEvent>(
      (event, emit) => emit(CounterState(counterValue: state.counterValue + 1)),
    );
    on<DecrementEvent>(
      (event, emit) => emit(CounterState(counterValue: state.counterValue - 1)),
    );
  }
}
