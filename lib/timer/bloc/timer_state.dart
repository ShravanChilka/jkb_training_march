part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState({
    required this.duration,
  });

  final int duration;

  @override
  List<Object?> get props => [duration];
}

class TimerStateInitial extends TimerState {
  const TimerStateInitial({
    required super.duration,
  });
}

class TimerStateRunPause extends TimerState {
  const TimerStateRunPause({
    required super.duration,
  });
}

class TimerStateRunInProgress extends TimerState {
  const TimerStateRunInProgress({
    required super.duration,
  });
}

class TimerStateRunComplete extends TimerState {
  const TimerStateRunComplete({
    required super.duration,
  });
}
