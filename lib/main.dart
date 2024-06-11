import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/counter_bloc/bloc/counter_bloc.dart';
import 'package:jkb_training_march/counter_cubit/cubit/counter_cubit.dart';
import 'package:jkb_training_march/counter_cubit/view/counter_cubit_screen.dart';
import 'package:jkb_training_march/timer/view/timer_page.dart';

import 'counter_bloc/view/counter_bloc_screen.dart';
import 'counter_stateful/counter_stateful_screen.dart';

final formKey = GlobalKey<FormState>();
final scaffoldMessagerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        scaffoldMessengerKey: scaffoldMessagerKey,
        home: const TimerPage(),
      ),
    ),
  );
}
