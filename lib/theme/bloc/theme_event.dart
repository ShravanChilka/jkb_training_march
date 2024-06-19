import 'package:flutter/material.dart';

abstract class ThemeEvent {
  const ThemeEvent();
}

class ThemeEventDarkMode extends ThemeEvent {}

class ThemeEventLightMode extends ThemeEvent {}

class ThemeEventColorSelected extends ThemeEvent {
  const ThemeEventColorSelected({
    required this.color,
  });

  final Color color;
}
