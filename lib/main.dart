import 'package:flutter/material.dart';
import 'package:widget_introduction/screens/counter_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: CounterScreen(),
    ),
  );
}
