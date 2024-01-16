import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/widgets/widgets.dart';

class ProductsOnSaleScreen extends StatefulWidget {
  const ProductsOnSaleScreen({super.key});

  @override
  State<ProductsOnSaleScreen> createState() => _ProductsOnSaleScreenState();
}

class _ProductsOnSaleScreenState extends State<ProductsOnSaleScreen> {
  final TextEditingController? _searchTextController = TextEditingController();

  @override
  void dispose() {
    _searchTextController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool _isEmpty = false;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Products on sale',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: _isEmpty
          // ignore: dead_code
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SvgPicture.asset('assets/images/box.svg'),
                    ),
                    const Text(
                      'No products on sale yet! \nStay tuned',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _searchTextController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    padding: EdgeInsets.zero,
                    childAspectRatio:
                        screenSize.width / (screenSize.height * 0.5),
                    children: List.generate(
                      16,
                      (index) {
                        return const OnSaleWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
