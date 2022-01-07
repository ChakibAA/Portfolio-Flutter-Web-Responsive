import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portfolio/Controller/AboutController.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widget/ChakibTitle.dart';

class About extends GetResponsiveView {
  About({Key? key});

  @override
  Widget builder() {
    return GetBuilder<AboutController>(
        init: AboutController(),
        builder: (c) => Scrollbar(
              isAlwaysShown: true,
              interactive: true,
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,
                    height: screen.height,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: screen.height * 0.3,
                              left: screen.width <= 850
                                  ? screen.width * 0.05
                                  : screen.width * 0.1,
                            ),
                            width: screen.width <= 850
                                ? screen.width / 1.2
                                : screen.width / 1.8,
                            child: Text(
                              'I design & develop \nyour digital projects',
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screen.width <= 850
                                      ? screen.width / 7
                                      : screen.width / 18,
                                  color: primaryColor),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 100,
                                left: screen.width <= 850
                                    ? screen.width * 0.09
                                    : screen.width * 0.18,
                                bottom: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'About',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.white),
                                ),
                                Container(
                                  width: screen.width <= 850
                                      ? screen.width / 1.2
                                      : screen.width / 1.8,
                                  child: SelectableText(
                                    "\nHi, I'm Chakib, computer science student at Boumerdes university Algeria.",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  width: screen.width <= 850
                                      ? screen.width / 1.2
                                      : screen.width / 1.8,
                                  child: SelectableText(
                                    "\nEx qui duis ullamco ipsum. Consequat anim culpa consectetur sunt quis adipisicing commodo magna sunt sunt. Aliqua officia laborum aute qui officia enim do Lorem sunt anim incididunt ea irure ad. Laboris pariatur voluptate reprehenderit Lorem fugiat deserunt elit minim velit. In magna adipisicing proident reprehenderit commodo cillum eu adipisicing. Officia dolor duis voluptate non ex nisi ad.",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ChakibTitle(screen: screen, c: c),
                ],
              ),
            ));
  }
}
