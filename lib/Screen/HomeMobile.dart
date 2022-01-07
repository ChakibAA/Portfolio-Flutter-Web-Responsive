import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portfolio/widget/Mobile/ButtonHomeMobile1.dart';
import 'package:portfolio/widget/Mobile/ButtonHomeMobile2.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeMobile> {
  bool hover = true;
  bool move = true;
  bool bounce = true;
  var timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 600), (timer) {
      setState(() {
        bounce = !bounce;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          hover = !hover;
          move = !move;
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/n.jpeg"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            ButtonHomeMobile1(
              hover: hover,
              delay: 200,
              top1: MediaQuery.of(context).size.height * 0.25,
              top2: MediaQuery.of(context).size.height * 0.27,
              text: 'Hello',
              onpressd: () {
                if (hover) {
                  setState(() {
                    hover = !hover;
                    move = !move;
                  });
                }
              },
            ),
            ButtonHomeMobile2(
              hover: !hover,
              delay: 200,
              top1: MediaQuery.of(context).size.height * 0.25,
              top2: MediaQuery.of(context).size.height * 0.27,
              text: 'About.',
              onpressd: () {
                if (!hover) {
                  Get.toNamed('/about');
                }
              },
            ),
            ButtonHomeMobile1(
              hover: hover,
              delay: 300,
              top1: MediaQuery.of(context).size.height * 0.38,
              top2: MediaQuery.of(context).size.height * 0.4,
              text: 'I am',
              onpressd: () {
                if (hover) {
                  setState(() {
                    hover = !hover;
                    move = !move;
                  });
                }
              },
            ),
            ButtonHomeMobile2(
              hover: !hover,
              delay: 300,
              top1: MediaQuery.of(context).size.height * 0.38,
              top2: MediaQuery.of(context).size.height * 0.4,
              text: 'Work',
              onpressd: () {
                if (!hover) {
                  Get.toNamed('/work');
                }
              },
            ),
            ButtonHomeMobile1(
              hover: hover,
              delay: 400,
              top1: MediaQuery.of(context).size.height * 0.51,
              top2: MediaQuery.of(context).size.height * 0.53,
              text: 'Chakib',
              onpressd: () {
                if (hover) {
                  setState(() {
                    hover = !hover;
                    move = !move;
                  });
                }
              },
            ),
            ButtonHomeMobile2(
              hover: !hover,
              delay: 400,
              top1: MediaQuery.of(context).size.height * 0.51,
              top2: MediaQuery.of(context).size.height * 0.53,
              text: 'Contact',
              onpressd: () {
                if (!hover) {
                  Get.toNamed('/contact');
                }
              },
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 600),
              top: bounce
                  ? MediaQuery.of(context).size.height * 0.94
                  : MediaQuery.of(context).size.height * 0.93,
              left: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {},
                child: SelectableText(
                  'Tap anywhere',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
