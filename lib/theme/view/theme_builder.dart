import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/theme_bloc.dart';
import '../bloc/theme_state.dart';

final formKey = GlobalKey<FormState>();
final scaffoldMessagerKey = GlobalKey<ScaffoldMessengerState>();

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({
    super.key,
    required this.home,
  });

  final Widget home;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDarkMode = state.isDarkMode;
        final selectedColor = state.selectedColor;
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
            colorScheme: ColorScheme.fromSeed(
              seedColor: selectedColor,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: home,
        );
      },
    );
  }
}
