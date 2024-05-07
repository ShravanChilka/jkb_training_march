import 'package:flutter/material.dart';
import 'package:jkb_training_march/my_contact_screen.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

final formKey = GlobalKey<FormState>();
final scaffoldMessagerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      scaffoldMessengerKey: scaffoldMessagerKey,
      home: const MyContactScreen(),
    ),
  );
}
