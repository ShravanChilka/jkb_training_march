import 'dart:async';

import 'package:flutter/material.dart';

class StreamControllerExample extends StatefulWidget {
  const StreamControllerExample({super.key});

  @override
  State<StreamControllerExample> createState() =>
      _StreamControllerExampleState();
}

class _StreamControllerExampleState extends State<StreamControllerExample> {
  final controller = StreamController<int>();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$runtimeType'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.sink.add(counter++);
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: controller.stream,
        builder: (context, snapshot) {
          final counter = snapshot.data;
          return Center(
            child: Text(
              counter.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
