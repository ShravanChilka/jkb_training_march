import 'package:flutter/material.dart';
import 'package:jkb_training_march/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).pop(Contact());
          },
          child: const Text('Sign in'),
        ),
      ),
    );
  }
}
