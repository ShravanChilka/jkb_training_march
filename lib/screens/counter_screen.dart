import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class CounterScreen extends StatelessWidget {
//   CounterScreen({super.key});

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter Screen'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           log('button pressed');
//           counter++;
//           log('counter $counter');
//         },
//       ),
//       body: Center(
//         child: Text(
//           counter.toString(),
//           style: Theme.of(context).textTheme.displayLarge,
//         ),
//       ),
//     );
//   }

//   int addTwoNumbers(int first, int second) {
//     return first + second;
//   }
// }

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    log('createState');
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  late int counter;
  Color color = Colors.blue;

  List<int> numbers = [];

  @override
  void initState() {
    counter = 1;
    super.initState();
    log('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant CounterScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    log('didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numbers.add(counter);
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: PersonListView(numbers: numbers),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    log('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    log('dispose');
  }
}

class PersonListView extends StatelessWidget {
  const PersonListView({
    super.key,
    required this.numbers,
  });

  final List<int> numbers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text('Person ${numbers[index]}'),
          subtitle: Text(DateTime.now().toString()),
        );
      },
    );
  }
}

class AddButton extends StatefulWidget {
  const AddButton({
    super.key,
  });

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          counter++;
        });
      },
      child: const Icon(Icons.add),
    );
  }
}
