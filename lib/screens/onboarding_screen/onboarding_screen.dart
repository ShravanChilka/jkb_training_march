import 'package:flutter/material.dart';
import 'package:jkb_training_march/screens/onboarding_screen/widgets/coffee_image_widget.dart';
import 'package:jkb_training_march/screens/onboarding_screen/widgets/get_started_button.dart';
import 'package:jkb_training_march/screens/onboarding_screen/widgets/skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CoffeeImageWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  'Amazing\ntaste of\nCoffee',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFB78069),
                    height: 1.2,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Prepare to tantalize your taste buds with the amazing taste of coffee like never before',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      height: 1.7,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetStartedButton(),
                    SkipButton(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
