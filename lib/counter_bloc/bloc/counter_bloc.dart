import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main.dart';
import 'counter_event.dart';
import 'counter_state.dart';

const _counterKey = 'counter';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterEventLoad>(_onCounterEventLoad);
    on<CounterEventSet>(_onCounterEventSet);
    on<CounterEventIncrement>(_onCounterEventIncrement);
    on<CounterEventDecrement>(_onCounterEventDecrement);
  }

  FutureOr<void> _onCounterEventDecrement(event, emit) {
    int value = state.counter - 1;
    sharedPreferences.setInt(_counterKey, value);
    emit(
      CounterState(state.counter - 1),
    );
  }

  FutureOr<void> _onCounterEventIncrement(event, emit) {
    int value = state.counter + 1;
    sharedPreferences.setInt(_counterKey, value);
    emit(
      CounterState(state.counter + 1),
    );
  }

  FutureOr<void> _onCounterEventLoad(
    CounterEventLoad event,
    Emitter<CounterState> emit,
  ) {
    int value = sharedPreferences.getInt(_counterKey) ?? 0;
    emit(CounterState(value));
  }

  FutureOr<void> _onCounterEventSet(
    CounterEventSet event,
    Emitter<CounterState> emit,
  ) {
    int value = event.counter;
    sharedPreferences.setInt(_counterKey, value);

    emit(CounterState(value));
  }
}
