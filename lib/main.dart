import 'package:flutter/material.dart';
import 'package:jkb_training_march/application.dart';
import 'package:jkb_training_march/user/service/user_api_service.dart';

void main() {
  UserApiService userApiService = UserApiService();
  userApiService.getAllUsers();

  runApp(const Application());
}
