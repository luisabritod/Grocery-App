import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/widgets/widgets.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FancyShimmerImage(
                      imageUrl:
                          'https://lh3.googleusercontent.com/pw/ABLVV86ub2fndcsd926KQrOSTMY-bgZNouJPtunV5AHoeLQcZn02XzFgaqufo52zaOTZAIvZVRpiyX8Rh3xthNUEQRKZKOKHKi6_Oor4ggS2GDRROg9p47k_Pftlj9FauvMRo1I4lZ68Zy2MAT_lQJXMbb2gkPnsFL4vWtwjeFqPyNznUd5fMS6I2aLXM4QJ9Z7Ok8diJAM-cff0e43rkfUwmwrQs2hQif3hS1SG2vdMsq6LAUFxnvkeJTcSwrSG0YegtNMWrRrmRumHL3CJROIEDedBQZAdROZztyWfAwHfzwHApcj_BCaOowa00xQjTKzt4bXgaxUrGh01mojWQ9LgoMw8HDJX0BoNghOTeCn636eL1yD0iP1Ap4rmywh8HO_wlZHAIA2PvO2EW5IzBd_QQikgL_ZXWBB4w5hAt6tzrKwg_9lUskyXlq8d1uE-rf8p4ecAqoS4i_bnUrPq3TRKR8vsBjo2L6X1erh2zG_w7yDuC9_mImpVwx72FRayrkFIwrjh7FyolvN807ITsxuTqL8NeTr_rr54GYC7AM0571vkrbPzXd58v5fuGt5EMBmSTOkbPOOo6o2Dt1JpHpM9DB5CgCrGzrBEvI5RsFu6AfqrGmFwnqO1l3qvyhTsnOAl72vimwOBhDbxfK6Iq_mw9GFJr7QpRvt62io7oOZWhLUjffstFwuqsCxcGxjTMWbVFc0uidAa9TxXDrEfzkT1JkSmZW8klI5XJOZ20dhcMp4q2mA9-a1xqy8l4jFOETY31vxvIc6zChmeeR8NRIMlGKnbpbNiNb2s6O6noto9JVMDWPngodIOM5fH03b4-ZG7dA96ErvHaNKzJsPsiSJeRqSfTzqrhWRMkFV867dKjFRWuVivX37GkXkBmQqDrxK2wvBrA4c=w913-h913-s-no-gm?authuser=0',
                      height: size.height * 0.12,
                      width: size.height * 0.12,
                      boxFit: BoxFit.fill,
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
                const PriceWidget(
                    textPrice: '1',
                    isOnSale: true,
                    price: 2.59,
                    salePrice: 1.59),
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
