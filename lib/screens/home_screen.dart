import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widget_introduction/widgets/color_tile.dart';

final List<int> numbers = List.generate(200, (index) => index + 1);

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          log('built ${numbers[index]}');
          return Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                invertColors: true,
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1712023105222-653af4f805b6?q=80&w=2875&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
            ),
            child: Text(
              '${numbers[index]}',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
      // SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: numbers.map(
      //       (number) {
      //         log('built $number');
      //         return Container(
      //           padding: const EdgeInsets.all(20),
      //           alignment: Alignment.center,
      //           width: double.maxFinite,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //               invertColors: true,
      //               fit: BoxFit.cover,
      //               image: NetworkImage(
      //                 'https://images.unsplash.com/photo-1712023105222-653af4f805b6?q=80&w=2875&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      //               ),
      //             ),
      //           ),
      //           child: Text(
      //             '$number',
      //             style: Theme.of(context).textTheme.headlineLarge,
      //             textAlign: TextAlign.center,
      //           ),
      //         );
      //       },
      //     ).toList(),
      //   ),
      // ),
    );
  }
}
