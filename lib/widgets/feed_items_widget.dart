import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                FancyShimmerImage(
                  imageUrl:
                      'https://lh3.googleusercontent.com/pw/ABLVV87C2aKKYoWyKWmbZ6J0Ib41SxkzzR5DxrQoW2mJVRYgbe5HqLMQzrtHyrb7Gbe7_slXICzQtMbMG903BbjSdqFLKEOyK1g4Vsn-CsVLYUXIDleRmPJc8Gx3f169Tg_161X9aCuCZaiwhtE1XAUoF_mTlym9RLBWpyAYf3vUmMVPtHarbHkWWO2_Lkxco1T-_Bx61XCuOfAAtFnGcMlrEMTlcjZzFHFP3LYJMwHdF-Pl-6pREl4sypEde1CPjXSHOALLxXF6zcPFDnAbD5TqiF1lWGQFegerdUG7NqG0wQmSY8F89qMC36mMaX86PUD-7srbMHyK4SZswtsyEM_2nE5gRNzi0OFZP-tVe2sjM3kJv7ROLp8obMmvEPYlWPLIc0Nu2twlXvgkXkYl_yt1fVXJwwFhsJ-WH2j9Zs4iS_xGbhavzs5WHH7NgNO3igRoTOrJLJL9_rRmMO5l8nujefhwtrzn6LzDaS57BePnjLVqINUX7TbaF9FpPEB3V7XV1-sbqUMWBdPa74tohxltIMvRXNx44pKjnVhqkmWtrwxpwgE3nTN9m4Dyo-sFxFGjuoD0jcCmS59IyqbH8npP8wAr8du6amPVioIOuBbkKE4XAIOdh9ClE3CboFi8_h7dDUj-xfWPcrxyRT14wASxWVXetFRXVOULacBAwB1EkKTQBwutPCTsIaSDmU8DNiQw_bjMjN_-8qJiPDug18A8pRaSEKYNmbj6fgRD3IMBN2OY4eXvf5PmmeZsqXZY5kuV3O3XyhrEbosD-Mt149SQmSRZgq5aeoB5q2ja49un0zf-3lKAqz_FPY5yisLV4dfR-TnwmieMEjbyTsYIXsSGrnL126wFcfh9FHwGUjDZ1M9-za6p7BPG4kydU_z9eNCOFCEqzR4=w913-h913-s-no-gm?authuser=0',
                  height: size.height * 0.15,
                  width: size.height * 0.15,
                  boxFit: BoxFit.fill,
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
