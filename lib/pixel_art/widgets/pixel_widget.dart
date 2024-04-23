import 'package:flutter/material.dart';
import 'package:jkb_training_march/pixel_art/artworks.dart';

class PixelWidget extends StatelessWidget {
  const PixelWidget({
    super.key,
    required this.index,
    required this.color,
    required this.onTap,
  });

  final int index;
  final Color? color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap.call();
      },
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: _getPixelBorderWidth(index),
            color: _getPixelBorderColor(index),
          ),
        ),
      ),
    );
  }

  Color _getPixelBorderColor(int index) {
    return duckArtPixels[index] != null
        ? duckArtPixels[index]!
        : Colors.white10;
  }

  double _getPixelBorderWidth(int index) {
    return duckArtPixels[index] != null ? 1 : 0.4;
  }
}
