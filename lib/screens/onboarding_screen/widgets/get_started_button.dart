import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF925C44),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('Get Started'),
    );
  }
}
