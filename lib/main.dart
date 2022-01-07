import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/route.dart';

import 'Screen/HomeMobile.dart';

import 'Screen/HomeWeb.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: routes,
      debugShowCheckedModeBanner: false,
      title: 'CHAKIB Portfolio',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        canvasColor: primaryColor,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: HomeWeb(),
      mobile: HomeMobile(),
    );
  }
}
