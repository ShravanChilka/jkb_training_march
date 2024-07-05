import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/theme_bloc.dart';
import '../bloc/theme_event.dart';
import '../bloc/theme_state.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDarkMode = state.isDarkMode;
        return Switch(
          value: isDarkMode,
          onChanged: (value) {
            log('$value');
            context.read<ThemeBloc>().add(
                  value ? ThemeEventDarkMode() : ThemeEventLightMode(),
                );
          },
          thumbIcon: WidgetStatePropertyAll(
            Icon(
              isDarkMode ? Icons.dark_mode : Icons.light_mode,
            ),
          ),
        );
      },
    );
  }
}
