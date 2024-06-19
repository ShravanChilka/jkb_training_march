import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  const ThemeState({
    required this.isDarkMode,
    this.selectedColor = Colors.red,
  });

  final bool isDarkMode;
  final Color selectedColor;

  ThemeState copyWith({
    bool? isDarkMode,
    Color? selectedColor,
  }) {
    return ThemeState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }

  @override
  List<Object?> get props => [isDarkMode, selectedColor];
}
