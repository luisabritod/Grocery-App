import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeartButton extends StatelessWidget {
  const HeartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('button pressed');
      },
      child: const Icon(
        IconlyLight.heart,
        size: 22,
        color: Colors.black,
      ),
    );
  }
}
