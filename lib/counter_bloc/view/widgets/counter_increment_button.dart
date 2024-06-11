import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counter_bloc.dart';
import '../../bloc/counter_event.dart';

class CounterIncrementButton extends StatelessWidget {
  const CounterIncrementButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: () {
        context.read<CounterBloc>().add(
              CounterEventIncrement(),
            );
      },
      child: const Text('Increment'),
    );
  }
}
