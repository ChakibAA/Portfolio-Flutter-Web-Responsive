import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:portfolio/widget/web/ButtonHomeWeb.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeWeb> {
  bool hover1 = false;
  bool hover2 = false;
  bool hover3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/n.jpeg"), fit: BoxFit.cover)),
      child: Stack(
        children: [
          ButtonHomeWeb(
            delay: 200,
            top1: MediaQuery.of(context).size.height * 0.25,
            top2: MediaQuery.of(context).size.height * 0.27,
            text1: 'Hello',
            text2: 'About',
            onpressd: () {
              Get.toNamed('/about');
            },
          ),
          ButtonHomeWeb(
            delay: 300,
            top1: MediaQuery.of(context).size.height * 0.4,
            top2: MediaQuery.of(context).size.height * 0.42,
            text1: 'I am',
            text2: 'Work',
            onpressd: () {
              Get.toNamed('/work');
            },
          ),
          ButtonHomeWeb(
            delay: 400,
            top1: MediaQuery.of(context).size.height * 0.55,
            top2: MediaQuery.of(context).size.height * 0.57,
            text1: 'Chakib',
            text2: 'Contact',
            onpressd: () {
              Get.toNamed('/contact');
            },
          ),
        ],
      ),
    );
  }
}
