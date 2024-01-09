import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              onPressed: () {},
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
            SizedBox(
              height: screenSize.height * 0.24,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
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
