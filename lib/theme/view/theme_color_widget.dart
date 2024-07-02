import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/theme/bloc/theme_bloc.dart';
import 'package:jkb_training_march/theme/bloc/theme_event.dart';

const List<Color> colors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.pink,
];

class ThemeColorWidget extends StatelessWidget {
  const ThemeColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedColor = context.select<ThemeBloc, Color>(
      (bloc) => bloc.state.selectedColor,
    );
    log('build called');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: colors.map((color) {
        final isSelected = color == selectedColor;
        return IconButton(
          onPressed: () {
            context.read<ThemeBloc>().add(
                  ThemeEventColorSelected(color: color),
                );
          },
          icon: Icon(
            isSelected ? Icons.check_circle : Icons.circle,
            color: color,
          ),
        );
      }).toList(),
    );
  }
}
