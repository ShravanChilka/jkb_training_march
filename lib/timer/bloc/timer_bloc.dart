import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';

const _durationOfTimer = 60;

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc()
      : super(
          const TimerStateInitial(
            duration: _durationOfTimer,
          ),
        ) {
    on<TimerEventStarted>(_onTimerEventStarted);
    on<_TimerEventTicked>(_onTimerEventTicked);
    on<TimerEventPaused>(_onTimerEventPaused);
    on<TimerEventResumed>(_onTimerEventResumed);
    on<TimerEventReset>(_onTimerEventReset);
  }

  final _ticker = const Ticker();

  StreamSubscription<int>? _tickerSubscription;

  FutureOr<void> _onTimerEventStarted(
    TimerEventStarted event,
    Emitter<TimerState> emit,
  ) {
    emit(
      TimerStateRunInProgress(
        duration: event.duration,
      ),
    );
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(duration: event.duration).listen(
      (duration) {
        add(_TimerEventTicked(duration: duration));
      },
    );
  }

  FutureOr<void> _onTimerEventTicked(
    _TimerEventTicked event,
    Emitter<TimerState> emit,
  ) {
    emit(
      event.duration > 0
          ? TimerStateRunInProgress(duration: event.duration)
          : TimerStateRunComplete(duration: event.duration),
    );
  }

  FutureOr<void> _onTimerEventPaused(
    TimerEventPaused event,
    Emitter<TimerState> emit,
  ) {
    if (state is TimerStateRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerStateRunPause(duration: state.duration));
    }
  }

  FutureOr<void> _onTimerEventResumed(
    TimerEventResumed event,
    Emitter<TimerState> emit,
  ) {
    if (state is TimerStateRunPause) {
      _tickerSubscription?.resume();
      emit(TimerStateRunInProgress(duration: state.duration));
    }
  }

  FutureOr<void> _onTimerEventReset(
    TimerEventReset event,
    Emitter<TimerState> emit,
  ) {
    _tickerSubscription?.cancel();
    emit(const TimerStateInitial(duration: _durationOfTimer));
  }
}
