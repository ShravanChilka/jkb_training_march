import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/counter_bloc/bloc/counter_bloc.dart';
import 'package:jkb_training_march/counter_bloc/view/counter_bloc_screen.dart';
import 'package:jkb_training_march/theme/bloc/theme_state.dart';
import 'package:jkb_training_march/user/view/user_page.dart';

import 'counter_stateful/counter_stateful_screen.dart';
import 'theme/bloc/theme_bloc.dart';
import 'theme/view/theme_builder.dart';
import 'timer/view/timer_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(
        ThemeState(
          isDarkMode: Theme.of(context).brightness == Brightness.dark,
        ),
      ),
      child: const ThemeBuilder(
        home: UserPage(),
      ),
    );
  }
}
