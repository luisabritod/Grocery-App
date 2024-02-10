import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/screens/cart/components/components.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final _quantityTextController = TextEditingController();

  @override
  void initState() {
    _quantityTextController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    _quantityTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(3),
        width: size.width,
        decoration: BoxDecoration(
          color: const Color(0xffA2B7C1).withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  height: size.height * 0.13,
                  width: size.height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/products/strawberry.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                      child: Row(
                        children: [
                          QuantityController(
                            function: () {},
                            icon: Icons.remove,
                            color: const Color(0xffD65A5A),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            flex: 1,
                            child: TextField(
                              controller: _quantityTextController,
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                              decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]'),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  if (value.isEmpty) {
                                    _quantityTextController.text = '1';
                                  } else {
                                    return;
                                  }
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          QuantityController(
                            function: () {},
                            icon: Icons.add,
                            color: const Color(0xff64D65A),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Spacer(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      ButtonCartWidget(
                        icon: CupertinoIcons.cart_badge_minus,
                        color: const Color(0xffD65A5A),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      ButtonCartWidget(
                        icon: IconlyLight.heart,
                        color: Colors.black,
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        '\$0.29',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        maxLines: 1,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
