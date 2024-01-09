import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Row(
        children: [
          Text(
            '1.59\$',
            style: TextStyle(
              color: Color(0xff64D65A),
              fontSize: 22,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '2.59\$',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
