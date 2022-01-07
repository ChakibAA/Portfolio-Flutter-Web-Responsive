import 'package:get/get.dart';

class AboutController extends GetxController {
  RxBool hoverTitle = false.obs;

  List<RxBool> hoverProject = [
    false.obs,
  ];
  List<RxBool> hoverContact = [
    false.obs,
  ];

  enter() {
    hoverTitle = true.obs;
    update();
  }

  exit() {
    hoverTitle = false.obs;
    update();
  }

  enterProject(index) {
    hoverProject[index] = true.obs;
    update();
  }

  exitProject(index) {
    hoverProject[index] = false.obs;
    update();
  }

  enterContact(index) {
    hoverProject[index] = true.obs;
    update();
  }

  exitContact(index) {
    hoverProject[index] = false.obs;
    update();
  }
}
