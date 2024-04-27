import 'package:flutter/material.dart';
import 'package:jkb_training_march/sign_in_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    ),
  );
}
