import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Controller/AboutController.dart';
import 'package:portfolio/Model/App.dart';
import 'package:portfolio/constant.dart';

import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class WorkDetails extends GetResponsiveView {
  WorkDetails({Key? key}) : super(key: key);

  App app = workList[Get.parameters['name'].toString()]!;

  @override
  Widget builder() {
    return GetBuilder<AboutController>(
      init: AboutController(),
      builder: (c) => Scrollbar(
        isAlwaysShown: true,
        interactive: true,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      color: Colors.white,
                      width: double.infinity,
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
                              app.title,
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
                                  'About ${app.title}',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                                detailsText(app.about),
                                Text(
                                  '\nTechnical details',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                                detailsText(app.technical),
                                Text(
                                  '\nApplication features :',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                                detailsText(app.features),
                              ],
                            ),
                          ),
                          appScreen()
                        ],
                      )),
                ],
              ),
            ),
            title(c),
          ],
        ),
      ),
    );
  }

  Container detailsText(String text) {
    return Container(
      width: screen.width <= 850 ? screen.width / 1.2 : screen.width / 1.8,
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w100,
            fontSize: 20,
            color: Colors.black),
      ),
    );
  }

  Widget appScreen() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
        left: screen.width <= 850 ? screen.width * 0.05 : screen.width * 0.1,
      ),
      child: Column(
        children: [
          Flex(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: screen.width <= 850
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            direction: screen.width <= 850 ? Axis.vertical : Axis.horizontal,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: app.color,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 150,
                width: 150,
                child: Image.asset(
                  app.logo,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: screen.width <= 850
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    app.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    app.description,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w100,
                        fontSize: 17,
                        decoration: TextDecoration.none),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      crossAxisAlignment: screen.width <= 850
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      mainAxisAlignment: screen.width <= 850
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.start,
                      children: [
                        app.playstoreLink != null
                            ? GestureDetector(
                                onTap: () {
                                  openLink(app.playstoreLink!);
                                },
                                child: SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: Image.asset('assets/playstore.png'),
                                ),
                              )
                            : Container(),
                        GestureDetector(
                          onTap: () {
                            openLink(app.appStoreLink!);
                          },
                          child: SizedBox(
                            height: 50,
                            width: 150,
                            child: Image.asset('assets/appstore.png'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Flex(
            direction: screen.width <= 850 ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageAppCard(app.image1),
              ImageAppCard(app.image2),
              ImageAppCard(app.image3),
              ImageAppCard(app.image4),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  AnimatedPositioned title(AboutController c) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 100),
      top: screen.height * 0.1,
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
                    color: c.hoverTitle.value ? Colors.red : Colors.black),
              ),
              c.hoverTitle.value
                  ? Text(
                      '.Home',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container ImageAppCard(String image) {
    return Container(
      width: screen.width <= 850 ? 270 : screen.width / 5.33,
      height: screen.width <= 850 ? 590 : screen.width / 2.44,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20), child: Image.asset(image)),
    );
  }
}

Future openLink(
  String url,
) async {
  if (await canLaunch(url)) {
    await launch(
      url,
    );
  } else {
    throw 'Could not launch $url';
  }
}
