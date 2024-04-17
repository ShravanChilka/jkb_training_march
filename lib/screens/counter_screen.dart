import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: const CounterScreenBody(counter: 10),
    );
  }
}

class CounterScreenBody extends StatefulWidget {
  const CounterScreenBody({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  State<CounterScreenBody> createState() => _CounterScreenBodyState();
}

class _CounterScreenBodyState extends State<CounterScreenBody> {
  late int counter;

  @override
  void initState() {
    super.initState();
    counter = widget.counter;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            counter.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
