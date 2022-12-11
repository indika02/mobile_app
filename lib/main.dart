import 'package:flutter/material.dart';
import 'package:untitled3/Pages/itemPage.dart';

import 'Pages/HomePage.dart';
import 'Pages/cartPage.dart';
import 'Pages/itemPage.dart';
import 'Pages/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) =>SplashScreen(),
        "HomePage": (context) => HomePage(),
        "cartPage": (context) => cartPage(),
        "itemPage": (context) => itemPage(),
      },
    );
  }
}
