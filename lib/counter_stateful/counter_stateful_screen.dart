import 'dart:developer';

import 'package:flutter/material.dart';

class CounterStatefulScreen extends StatefulWidget {
  const CounterStatefulScreen({super.key});

  @override
  State<CounterStatefulScreen> createState() => _CounterStatefulScreenState();
}

class _CounterStatefulScreenState extends State<CounterStatefulScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    log('build method called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Stateful Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton.tonal(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: const Text('Decrement'),
              ),
              FilledButton.tonal(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
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
