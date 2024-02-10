import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/screens/screens.dart';
import 'package:grocery_app/widgets/widgets.dart';

class FeedItemsWidget extends StatefulWidget {
  const FeedItemsWidget({super.key});

  @override
  State<FeedItemsWidget> createState() => _FeedItemsWidgetState();
}

class _FeedItemsWidgetState extends State<FeedItemsWidget> {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff7A98A7).withOpacity(0.2),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ProductsDetails();
                },
              ),
            );
          },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/products/strawberry.svg',
                  height: size.height * 0.15,
                  width: size.height * 0.15,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  children: [
                    Text(
                      'product name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    HeartButton(),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 6,
                        child: PriceWidget(
                            salePrice: 2.99,
                            price: 5.9,
                            textPrice: _quantityTextController.text,
                            isOnSale: true),
                      ),
                      const Spacer(),
                      const FittedBox(child: Text('Kg')),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        flex: 2,
                        child: TextFormField(
                          controller: _quantityTextController,
                          key: const ValueKey('value'),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          enabled: true,
                          onChanged: (value) {
                            setState(() {});
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9.]'))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
