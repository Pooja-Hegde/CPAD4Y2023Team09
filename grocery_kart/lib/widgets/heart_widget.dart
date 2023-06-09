import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeartWidget extends StatelessWidget {
  const HeartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Icon(
        IconlyLight.heart,
        size: 18,
      ),
    );
  }
}
