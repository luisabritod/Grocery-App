import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/widgets.dart';

// ignore: must_be_immutable
class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  List<Color> gridColor = [
    const Color(0xff3d4c54),
    const Color(0xff1f232a),
    // const Color(0xff556a75),
    // const Color(0xff7a98a7),
    // const Color(0xff778287),
    // const Color(0xff2b353b),
  ];

  List<Map<String, dynamic>> catInfo = [
    {
      'catImg': 'assets/images/categories/fruits.png',
      'catName': 'Fruits',
    },
    {
      'catImg': 'assets/images/categories/vegetables.png',
      'catName': 'Vegetable',
    },
    {
      'catImg': 'assets/images/categories/spinach.png',
      'catName': 'Herbs',
    },
    {
      'catImg': 'assets/images/categories/nuts.png',
      'catName': 'Nuts',
    },
    {
      'catImg': 'assets/images/categories/grains.png',
      'catName': 'Grains',
    },
    {
      'catImg': 'assets/images/categories/spices.png',
      'catName': 'Spices',
    },
    {
      'catImg': 'assets/images/categories/drinks.png',
      'catName': 'Drinks',
    },
    {
      'catImg': 'assets/images/categories/meat.png',
      'catName': 'Meat',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(8, (index) {
            return CategoriesWidget(
              catImg: catInfo[index]['catImg'],
              catName: catInfo[index]['catName'],
              color: gridColor[index % 2],
            );
          }),
        ),
      ),
    );
  }
}
