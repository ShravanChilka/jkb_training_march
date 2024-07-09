import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import 'counter_bloc_new_screen.dart';

import 'widgets/counter_increment_button.dart';
import 'widgets/counter_widget.dart';

class CounterBlocScreen extends StatefulWidget {
  const CounterBlocScreen({super.key});

  @override
  State<CounterBlocScreen> createState() => _CounterBlocScreenState();
}

class _CounterBlocScreenState extends State<CounterBlocScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<CounterBloc>().add(CounterEventLoad());
  }

  @override
  Widget build(BuildContext context) {
    log('build method called');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<int>(
            context: context,
            builder: (context) {
              return Center(
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop(100);
                  },
                  child: const Text('Return hello'),
                ),
              );
            },
          ).then((result) {
            if (result != null) {
              context.read<CounterBloc>().add(
                    CounterEventSet(counter: result),
                  );
            }
          });

          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => const CounterBlocNewScreen(),
          //   ),
          // );
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
