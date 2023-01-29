import 'package:get/get.dart';

import '../home/home_page.dart';

class SplashSreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      return Get.offNamed(HomePage.routeName);
    });
    super.onInit();
  }
}
