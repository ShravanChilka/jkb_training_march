import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import 'counter_bloc_new_screen.dart';

import 'widgets/counter_increment_button.dart';
import 'widgets/counter_widget.dart';

class CounterBlocScreen extends StatelessWidget {
  const CounterBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('build method called');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CounterBlocNewScreen(),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Counter Bloc Screen'),
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
                  context.read<CounterBloc>().add(
                        CounterEventDecrement(),
                      );
                },
                child: const Text('Decrement'),
              ),
              const CounterIncrementButton(),
            ],
          )
        ],
      ),
    );
  }
}
