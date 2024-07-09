import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'application.dart';
import 'todos/core/local_database.dart';

late final SharedPreferences sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await LocalDatabase().initialize();
  runApp(const Application());
}
