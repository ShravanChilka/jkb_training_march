import 'package:flutter/material.dart';
import 'package:widget_introduction/screens/popular_screen/coffee.dart';

class CoffeeListTile extends StatelessWidget {
  const CoffeeListTile({
    super.key,
    required this.coffee,
  });

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3B2C27),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              image: NetworkImage(coffee.imageUrl),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coffee.title,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                coffee.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFFB5B0AD),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$${coffee.price}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
