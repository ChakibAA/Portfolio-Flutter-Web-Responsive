import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portfolio/Controller/AboutController.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widget/ChakibTitle.dart';
import 'package:flutter/services.dart';

class Contact extends GetResponsiveView {
  Contact({Key? key});

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  "Let's make something great!",
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
                            ],
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
                                  'Contact',
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
                                    "\nI have always sought to collaborate with companies / agencies / individuals, not just working for them but advising them and helping them achieve their goals.",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  width: screen.width <= 850
                                      ? screen.width / 1.2
                                      : screen.width / 1.8,
                                  child: SelectableText(
                                    "\nYou are interested in my work and you want to work with me so feel free to contact me through all the platforms below :",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                MouseRegion(
                                  onEnter: (event) {
                                    c.enterContact(0);
                                  },
                                  onExit: (event) {
                                    c.exitContact(0);
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(ClipboardData(
                                          text: "dev.chakibaa@gmail.com"));
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 150),
                                      padding: EdgeInsets.only(
                                          bottom: 100,
                                          left: c.hoverProject[0].value
                                              ? screen.width * 0.02
                                              : 0),
                                      child: Text(
                                        c.hoverProject[0].value
                                            ? 'Copy to clipboard'
                                            : 'dev.chakibaa@gmail.com',
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: primaryColor),
                                      ),
                                    ),
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
