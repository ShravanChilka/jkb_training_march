import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jkb_training_march/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String userName = '';

  TextEditingController userNameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: userNameController,
                cursorColor: Colors.red,
                maxLength: 15,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: const Text('User name'),
                  hintText: 'Enter username',
                  fillColor: Colors.white10,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null) return 'Enter username';
                  if (value.isEmpty) return 'Enter username';
                  if (value.length < 5) return 'Enter alteast 5 characters';
                  return null;
                },
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: passwordController,
                cursorColor: Colors.red,
                maxLength: 15,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key),
                  label: const Text('Password'),
                  hintText: 'Enter password',
                  fillColor: Colors.white10,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null) return 'Enter username';
                  if (value.isEmpty) return 'Enter username';
                  if (value.length < 5) return 'Enter alteast 5 characters';
                  return null;
                },
              ),
              const SizedBox(height: 24),
              Center(
                child: FilledButton(
                  onPressed: () {
                    log(userNameController.text);
                  },
                  child: const Text('Sign in'),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text('Sign up'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
