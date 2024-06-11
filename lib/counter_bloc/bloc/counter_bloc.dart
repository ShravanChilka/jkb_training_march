import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterEventIncrement>((event, emit) {
      emit(
        CounterState(state.counter + 1),
      );
    });
    on<CounterEventDecrement>((event, emit) {
      emit(
        CounterState(state.counter - 1),
      );
    });
  }
}
