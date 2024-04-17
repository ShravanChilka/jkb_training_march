import 'package:flutter/material.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({
    super.key,
    this.color = Colors.red,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: color,
    );
  }
}
