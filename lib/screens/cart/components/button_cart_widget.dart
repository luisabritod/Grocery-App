import 'package:flutter/material.dart';

class ButtonCartWidget extends StatelessWidget {
  const ButtonCartWidget({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: Icon(
        icon,
        color: color,
        size: 22,
      ),
    );
  }
}
