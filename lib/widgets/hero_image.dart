import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          'assets/images/macos_bg.jpg',
          color: Colors.teal,
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}
