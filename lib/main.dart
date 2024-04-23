import 'package:flutter/material.dart';
import 'package:jkb_training_march/screens/counter_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: const CounterScreen(),
    ),
  );
}
