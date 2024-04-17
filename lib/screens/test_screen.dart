import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 350,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
