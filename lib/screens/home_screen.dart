import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Grocery App',
      //     style: TextStyle(
      //       color: Color(0xff416C81),
      //       fontSize: 24,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   forceMaterialTransparency: true,
      //   // scrolledUnderElevation: 2,
      // ),
      body: Padding(
        padding: EdgeInsets.only(top: _screenSize.height * 0.06),
        child: SizedBox(
          height: _screenSize.height * 0.33,
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
      ),
    );
  }
}
