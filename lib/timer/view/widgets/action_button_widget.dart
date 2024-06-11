import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/timer/bloc/timer_bloc.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        List<Widget> widgets = [];

        if (state is TimerStateInitial) {
          widgets.add(
            TimerStartButton(state: state),
          );
        }
        if (state is TimerStateRunInProgress) {
          widgets.addAll(const [
            TimerPauseButton(),
            TimerResetButton(),
          ]);
        }
        if (state is TimerStateRunPause) {
          widgets.addAll(const [
            TimerResumeButton(),
            TimerResetButton(),
          ]);
        }
        if (state is TimerStateRunComplete) {
          widgets.add(
            const TimerResetButton(),
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widgets,
        );
      },
    );
  }
}

class TimerResetButton extends StatelessWidget {
  const TimerResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {
        context.read<TimerBloc>().add(
              const TimerEventReset(),
            );
      },
      icon: const Icon(Icons.replay),
    );
  }
}

class TimerPauseButton extends StatelessWidget {
  const TimerPauseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {
        context.read<TimerBloc>().add(
              const TimerEventPaused(),
            );
      },
      icon: const Icon(Icons.pause),
    );
  }
}

class TimerResumeButton extends StatelessWidget {
  const TimerResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {
        context.read<TimerBloc>().add(
              const TimerEventResumed(),
            );
      },
      icon: const Icon(Icons.play_arrow),
    );
  }
}

class TimerStartButton extends StatelessWidget {
  const TimerStartButton({
    required this.state,
    super.key,
  });

  final TimerStateInitial state;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {
        context.read<TimerBloc>().add(
              TimerEventStarted(
                duration: state.duration,
              ),
            );
      },
      icon: const Icon(Icons.play_arrow),
    );
  }
}
