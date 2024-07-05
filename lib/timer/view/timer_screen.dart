import 'package:flutter/material.dart';
import '../../theme/view/theme_toggle_button.dart';
import 'widgets/timer_text_widget.dart';

import '../../theme/view/theme_color_widget.dart';
import 'widgets/action_button_widget.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Bloc Project'),
        actions: const [
          ThemeToggleButton(),
        ],
      ),
      body: Column(
        children: [
          const TimerTextWidget(),
          const ActionButtonWidget(),
          FilledButton(onPressed: () {}, child: const Text('Button')),
          Container(
            height: 200,
            width: 200,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          const ThemeColorWidget(),
        ],
      ),
    );
  }
}
