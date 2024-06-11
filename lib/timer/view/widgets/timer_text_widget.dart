import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/timer/bloc/timer_bloc.dart';

class TimerTextWidget extends StatelessWidget {
  const TimerTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return Text(
            state.duration.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          );
        },
      ),
    );
  }
}
