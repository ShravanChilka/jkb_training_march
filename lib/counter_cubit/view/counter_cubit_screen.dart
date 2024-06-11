import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import 'widgets/counter_widget.dart';

class CounterCubitScreen extends StatelessWidget {
  const CounterCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('build method called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CounterWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton.tonal(
                onPressed: () {
                  context.read<CounterCubit>().decrementCounter();
                },
                child: const Text('Decrement'),
              ),
              FilledButton.tonal(
                onPressed: () {
                  context.read<CounterCubit>().incrementCounter();
                },
                child: const Text('Increment'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
