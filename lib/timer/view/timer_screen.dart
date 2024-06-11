import 'package:flutter/material.dart';
import 'package:jkb_training_march/timer/view/widgets/timer_text_widget.dart';

import 'widgets/action_button_widget.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Bloc Project'),
      ),
      body: const Column(
        children: [
          TimerTextWidget(),
          ActionButtonWidget(),
        ],
      ),
    );
  }
}
