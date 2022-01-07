import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/Controller/AboutController.dart';
import 'package:portfolio/Model/App.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widget/ChakibTitle.dart';

// ignore: must_be_immutable
class MyworkList extends GetResponsiveView {
  MyworkList({Key? key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget builder() {
    return GetBuilder<AboutController>(
        init: AboutController(),
        builder: (c) => Scrollbar(
              isAlwaysShown: true,
              interactive: true,
              child: Container(
                color: Colors.black,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: screen.height * 0.3,
                          left: screen.width * 0.1,
                          right: screen.width * 0.08,
                        ),
                        color: Colors.black38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MY WORKS',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screen.width <= 850
                                      ? screen.width / 7
                                      : screen.width / 18,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Colors.white,
                              thickness: 3,
                            ),
                            SizedBox(
                              height: 150,
                            ),
                            workCard(c, workList['Wasfaty']!, 0),
                          ],
                        ),
                      ),
                    ),
                    ChakibTitle(screen: screen, c: c),
                  ],
                ),
              ),
            ));
  }

  AnimatedContainer workCard(AboutController c, App app, int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      padding: EdgeInsets.only(
          bottom: 100,
          left: c.hoverProject[index].value
              ? screen.width * 0.02
              : screen.width * 0.01),
      child: MouseRegion(
        onEnter: (event) {
          c.enterProject(index);
        },
        onExit: (event) {
          c.exitProject(index);
        },
        child: GestureDetector(
          onTap: () {
            Get.toNamed('/work/${app.title}');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                app.title,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: c.hoverProject[index].value
                        ? primaryColor
                        : Colors.white),
              ),
              Text(
                'ios & android App',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: c.hoverProject[index].value
                        ? Colors.white
                        : primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: screen.width <= 850 ? 0.03 : screen.width * 0.5),
                child: Divider(
                  color:
                      c.hoverProject[index].value ? primaryColor : Colors.white,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
