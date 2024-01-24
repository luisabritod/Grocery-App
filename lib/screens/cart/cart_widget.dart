import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
                  child: FancyShimmerImage(
                    imageUrl:
                        'https://lh3.googleusercontent.com/pw/ABLVV87-NIb_2dcWnm9P31s5MPmsSwAkYFs5fxjIOtLzS1R2XQAGYWS3afeLYk9noLlaeJbc2Otsb9lLqz962uKbuQxzA2uadWbxUGo2KT-FSpzvY9c1kOyrZkZKvOY0CJRggcnmm_ld9IgS--RN8ZOoE2ix8w_-1_tQuu4xTKT9f70CG2dANEdpVmctQH7Pi7lJ4iXh3CjkeDoshE7Vt8fyJsB7_QHrt15l7j22cXBpSP_F8QYEoI-9WcH3BwSfbqpzI9QD6rOzagQm5NjCsnKngTlFQxqbhF3JOuCB1d3zGTM1RAATcG84LeeZqZ_4yFWAH7gXH11YK5odU9teyVMRXiUQ5Q4yH-IIcKye4c6mkKhnp8Gvb38Gn6znU30XbHJPpVKDb4CQXN2axZlFznCO0HNfWU8_paub9lsPJPLmzyhpFENUXR58qIWT9sdejyVKjeAb1Z-Xi4Nk6cZk2Il-XrtPwtiTvsPPcbAmIOq2IqgOSw-Dih-IGBuELjNXWja8pBjN-e2-w2EmaqA50EFbFQn9SAL4nMp-Kd2bKREBbxk0ovu4eqGHpnjEe5mhKXpBJ6jJnz7Hh8vvCCCFIXsuVaEVA-n6GkPNmOIUEvCZ6DX_UzdSP9B5xpJYNXB6zkXNspl5awTtMxcBSuhRnZD-_JPW-b_ftcO65sb5fKCbepZBAO8Y82ZZkIMnLwV0b7Ev5S50omZhSU3Id5F0nHxPkOxWvErOOa1foYSssWLvvD_64gbR8K_NQbkKOCM8tLF336LrVdT-m3_GMveeTPvBtgqrXy-WQaQ_FimrGUfkISL-mu4yKH7rLjoovv0Ql_pDZNBiE2X0VdWFT544prLWEcZB98TrAEe4YK_DzBvskDJiUm4c953NXU8RYVm-qRh47ewnr38=w945-h945-s-no-gm?authuser=0',
                    boxFit: BoxFit.fill,
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
