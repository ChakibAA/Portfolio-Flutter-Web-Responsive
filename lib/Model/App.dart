import 'package:flutter/material.dart';

class App {
  String logo;
  String title;
  String description;
  String image1;
  String image2;
  String image3;
  String image4;
  Color color;
  String? playstoreLink;
  String? appStoreLink;
  String about;
  String technical;
  String features;

  App(
      {required this.description,
      required this.about,
      required this.technical,
      required this.features,
      required this.image1,
      required this.color,
      this.playstoreLink,
      required this.image2,
      this.appStoreLink,
      required this.image3,
      required this.image4,
      required this.logo,
      required this.title});
}
