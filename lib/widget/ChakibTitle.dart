import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/Controller/AboutController.dart';

import '../constant.dart';

class ChakibTitle extends StatelessWidget {
  const ChakibTitle({
    Key? key,
    required this.screen,
    required this.c,
  }) : super(key: key);

  final ResponsiveScreen screen;

  final AboutController c;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 100),
      top: screen.height * 0.2,
      right: c.hoverTitle.value ? screen.width * 0.11 : screen.width * 0.1,
      child: MouseRegion(
        onEnter: (event) {
          c.enter();
        },
        onExit: (event) {
          c.exit();
        },
        child: GestureDetector(
          onTap: () {
            Get.toNamed('/home');
          },
          child: Row(
            children: [
              Text(
                'CHAKIB',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: c.hoverTitle.value ? primaryColor : Colors.white),
              ),
              c.hoverTitle.value
                  ? Text(
                      '.Home',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color:
                              c.hoverTitle.value ? primaryColor : Colors.white),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
