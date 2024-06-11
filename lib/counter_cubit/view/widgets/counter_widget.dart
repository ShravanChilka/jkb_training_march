import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/counter_cubit.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          log('builder called');
          return Text(
            state.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          );
        },
      ),
    );
  }
}
