import 'package:get/get.dart';

class BottomNavigatorBarController extends GetxController {
  bool isHomePage = true;
  bool isCart = false;

  homePage() {
    isHomePage = true;
    isCart = false;
    update();
  }

  cartPage() {
    isHomePage = false;
    isCart = true;
    update();
  }
}
