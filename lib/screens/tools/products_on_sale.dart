import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/widgets.dart';

class ProductsOnSaleScreen extends StatelessWidget {
  const ProductsOnSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products on sale',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          padding: EdgeInsets.zero,
          childAspectRatio: screenSize.width / (screenSize.height * 0.5),
          children: List.generate(
            16,
            (index) {
              return const OnSaleWidget();
            },
          ),
        ),
      ),
    );
  }
}
