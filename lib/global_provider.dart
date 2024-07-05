import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme/bloc/theme_bloc.dart';
import 'theme/bloc/theme_state.dart';

class GlobalProvider extends StatelessWidget {
  const GlobalProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(
            const ThemeState(isDarkMode: false),
          ),
        )
      ],
      child: child,
    );
  }
}
