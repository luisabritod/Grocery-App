// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/screens.dart';
// import 'package:grocery_app/consts/consts.dart';
// import 'package:grocery_app/provider/provider.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  // void getCurrentAppTheme() async {
  //   themeChangeProvider.setDarkTheme =
  //       await themeChangeProvider.darkThemePreferences.getTheme();
  // }

  // @override
  // void initState() {
  //   getCurrentAppTheme();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) {
    //       return themeChangeProvider;
    //     }),
    //   ],
    //   child:
    // Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      // theme: Styles.themeData(themeProvider.getDarkTheme, context),
      home: BottomBarScreen(),
    );
  }
  // ),
  // );
}
// }
