import 'package:get/get.dart';
import 'package:portfolio/Screen/Contact.dart';

import 'Screen/About.dart';
import 'Screen/MyWork.dart';
import 'Screen/work/WorkDetails.dart';
import 'main.dart';

final List<GetPage> routes = [
  GetPage(name: '/', page: () => Home()),
  GetPage(name: '/home', page: () => Home()),
  GetPage(name: '/work', page: () => MyworkList()),
  GetPage(name: '/about', page: () => About()),
  GetPage(
    name: '/work/:name',
    page: () => WorkDetails(),
  ),
  GetPage(
    name: '/contact',
    page: () => Contact(),
  ),
];
