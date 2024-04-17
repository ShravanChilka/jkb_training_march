import 'package:flutter/material.dart';

class ImageGradientWidget extends StatelessWidget {
  const ImageGradientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF2C1B14),
            Colors.transparent,
            Color(0xFF3A2922),
          ],
        ),
      ),
    );
  }
}
