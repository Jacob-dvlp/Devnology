import 'package:get/get.dart';

import '../bottom_navigator_bar/bottom_navigator_bar_page.dart';

class SplashSreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      return Get.offNamed(BottomNavigatorBarPage.routeName);
    });
    super.onInit();
  }
}
