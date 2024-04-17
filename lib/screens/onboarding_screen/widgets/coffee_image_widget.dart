import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_introduction/screens/onboarding_screen/widgets/image_gradient_widget.dart';

const imageUrl =
    'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

class CoffeeImageWidget extends StatelessWidget {
  const CoffeeImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SizedBox.expand(
          child: Image(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox.expand(
          child: ImageGradientWidget(),
        ),
      ],
    );
  }
}
