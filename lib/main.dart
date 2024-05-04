import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

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
