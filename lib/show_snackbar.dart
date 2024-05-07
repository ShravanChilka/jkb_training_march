import 'package:flutter/material.dart';
import 'package:jkb_training_march/main.dart';

void showSnackBar(String message) {
  scaffoldMessagerKey.currentState?.showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
