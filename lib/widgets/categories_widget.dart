import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {super.key,
      required this.catName,
      required this.catImg,
      required this.color});

  final String catName, catImg;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print('Category');
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: color.withOpacity(0.7),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Container(
                height: screenWidth * 0.3,
                width: screenWidth * 0.3,
                decoration: const BoxDecoration(),
                child: Image.asset(catImg),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                catName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
