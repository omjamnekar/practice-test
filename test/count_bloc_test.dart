import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:practice_test/counter_bloc.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    blocTest<CounterBloc, CounterState>(
      'emits [1] when IncrementEvent is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(IncrementEvent()),
      expect: () => [CounterState(counterValue: 1)],
    );

    blocTest<CounterBloc, CounterState>(
      'emits [-1] when DecrementEvent is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(DecrementEvent()),
      expect: () => [CounterState(counterValue: -1)],
    );
  });
}
