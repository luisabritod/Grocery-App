import 'package:flutter/material.dart';

class QuantityController extends StatelessWidget {
  const QuantityController({
    super.key,
    required this.color,
    required this.function,
    required this.icon,
  });

  final Color color;
  final Function function;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            function();
          },
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
