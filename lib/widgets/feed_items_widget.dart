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
                      'https://lh3.googleusercontent.com/pw/ABLVV87G_dXgsMLKAW24Nsou2RxGFX7w9n2BMgIi7eiPADhMp-Vyw5wcJrPer53YvNzTfyw3UM24i-ln1cnR7oMi5m1Lmla6dNedMrJlFlulfjR4dhz7TEoFMhshDWT7ZoQGcxk5mBjVvDUH6KZ3wd_4r81aj61sXr1Z1aDpy_lYYgF78iPKSdXMbrZrLX2vyVoFaupzrdOUx78GT2Fnv3ewdvxOpyYCVQRoB2DrkSz1ELkoqmqVXT-0PUN5_b3b_JLR80I23UPetsl3BDkXKnkpPubthodyM4j93FjHVsim0_WvPFneEAYeAcskQAFNEAISCHs_nyUC6QCQ8TLlMnjbLm5L4UmMBGwZXoOPP64GDUEwgx1vYh4x7ESLqhYwaVQyrkyv3zVCEmx_2C1JgW6V8RtVsQGAENBD2ETbLyfDHp9dhjdGOOxhBpOR_MmSxvt0hnjtMrL362kdcMwFdW3TiyZvQ3Uf0x9NThHJazZRuSR7mL_WgKK80TA3XOyESC6IfCwkLplvhNRs20CMDdT9xP6QODrPnZklCkeSkA9wSr6sSrdbBu76Kskexc-E4fQ0IKgMLiMLIdlCr5uJPos2pzJ3oGqZzGnJ2GW6xFzuBjyHk2ROck9eS3BMVgLSnV2EwLOx_bemfUxNt-hNvKQZPPDD55_EUe7_nz0FeHK58kQQSBjKJllJzAvG3zIv1yU-Ge0HiEDrP7g1oxOyzj6ATBQic-h5QhXn-0bEkTs4D4PquG14LFQc2Ta5hyhsdCyRzBY5beEZesEfig2tYXL3NT3U0J7jkJEM1MZy8rJcWB3QBMiXYm0E-UtlkBuBlUETKW6HyKqTAaPmGSi6C6pG57xGeRt0yXhuFWgQn0lD-F-YEFL5ebkbyqMomHeQ45WqYAgNu7g=w903-h903-s-no-gm?authuser=0',
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
