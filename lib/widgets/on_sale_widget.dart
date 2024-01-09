import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/widgets/widgets.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({super.key});

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: const Color(0xff7A98A7).withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://i.imgur.com/vZl9O9q.jpeg',
                      height: size.width * 0.22,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Text(
                          '1 KG',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(
                                IconlyLight.bag2,
                                size: 22,
                              ),
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            GestureDetector(
                              child: const Icon(
                                IconlyLight.heart,
                                size: 22,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const PriceWidget(),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Product name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
