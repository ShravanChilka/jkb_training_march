import 'package:flutter/material.dart';
import 'widgets/counter_increment_button.dart';
import 'widgets/counter_widget.dart';

class CounterBlocNewScreen extends StatelessWidget {
  const CounterBlocNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New screen'),
        actions: const [
          CounterIncrementButton(),
        ],
      ),
      body: const CounterWidget(),
    );
  }
}
