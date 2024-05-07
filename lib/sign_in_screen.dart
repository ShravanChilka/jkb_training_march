import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jkb_training_march/sign_up_screen.dart';

final formKey = GlobalKey<FormState>();

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String userName = '';
  final userNameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  final emailRegex = RegExp(r'''^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$''');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
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
                    prefixIcon: const Icon(Icons.person),
                    label: const Text('User name'),
                    hintText: 'Enter username',
                    fillColor: Colors.white10,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  validator: (text) {
                    if (text == null) return 'Enter username';
                    if (text.isEmpty) return 'Enter username';
                    if (text.length < 5) return 'Enter alteast 5 characters';
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    label: const Text('Email'),
                    hintText: 'Enter email',
                    fillColor: Colors.white10,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  validator: (text) {
                    return emailRegex.hasMatch(text ?? '')
                        ? null
                        : 'Invalid email';
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
                      final isValid = formKey.currentState?.validate() ?? false;
                      if (isValid == true) {
                        final email = emailController.text;
                        final userName = userNameController.text;
                        final password = passwordController.text;
                        log('email : $email');
                        log('userName : $userName');
                        log('password : $password');
                      } else {
                        log('invalid');
                      }
                    },
                    child: const Text('Sign in'),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: OutlinedButton(
                    onPressed: () async {
                      final result = await Navigator.of(context).push<Contact>(
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(
                            name: 'asdkhad',
                          ),
                        ),
                      );
                      print(result);
                    },
                    child: const Text('Sign up'),
                  ),
                )
              ],
            ),
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

class Contact {}
