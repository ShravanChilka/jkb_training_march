import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<int> numbers = [];

  @override
  Widget build(BuildContext context) {
    if (numbers.isEmpty) {
      return const Text('No contacts found!');
    }

    return ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        return ListTile();
      },
    );
  }
}
