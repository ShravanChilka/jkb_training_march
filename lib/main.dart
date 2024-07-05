import 'package:flutter/material.dart';
import 'application.dart';
import 'todos/core/local_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDatabase().initialize();
  runApp(const Application());
}
