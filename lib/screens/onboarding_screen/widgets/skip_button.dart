import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Text(
        'Skip',
        style: TextStyle(
          color: Color(0xFF897871),
          decorationColor: Color(0xFF897871),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
