import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/screens/tools/tools.dart';
import 'package:grocery_app/widgets/widgets.dart';

// import 'package:grocery_app/provider/provider.dart';
// import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImg = [
    'assets/images/offers/offer1.svg',
    'assets/images/offers/offer2.svg',
    'assets/images/offers/offer3.svg',
    'assets/images/offers/offer4.svg',
  ];

  @override
  Widget build(BuildContext context) {
    // final themeState = Provider.of<DarkThemeProvider>(context);
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screenSize.height * 0.06),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.33,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return SvgPicture.asset(
                      _offerImg[index],
                      fit: BoxFit.cover,
                    );
                  },
                  autoplay: true,
                  itemCount: _offerImg.length,
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Color(0xff2e4c5a)),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductsOnSaleScreen(),
                    ),
                  );
                },
                child: const Text(
                  'View all',
                  maxLines: 1,
                  style: TextStyle(
                    color: Color(0xff213641),
                    // fontWeight: FontWeight.w600,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff213641),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Row(
                        children: [
                          Text(
                            'On sale'.toUpperCase(),
                            style: const TextStyle(
                              color: Color(0xffD65A5A),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Icon(
                            IconlyLight.discount,
                            color: Color(0xffD65A5A),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: SizedBox(
                        height: screenSize.height * 0.24,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const OnSaleWidget();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Row(
                  children: [
                    const Text(
                      'Our products',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Browse all',
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xff213641),
                          // fontWeight: FontWeight.w600,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff213641),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                padding: EdgeInsets.zero,
                childAspectRatio: screenSize.width / (screenSize.height * 0.66),
                children: List.generate(
                  4,
                  (index) {
                    return const FeedItemsWidget();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
