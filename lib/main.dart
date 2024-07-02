import 'package:flutter/material.dart';
import 'package:jkb_training_march/application.dart';
import 'package:jkb_training_march/todos/core/local_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDatabase().initialize();
  runApp(const Application());
}
