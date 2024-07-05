import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/counter_bloc.dart';
import '../../bloc/counter_state.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          log('builder called');
          return Text(
            state.counter.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          );
        },
      ),
    );
  }
}
