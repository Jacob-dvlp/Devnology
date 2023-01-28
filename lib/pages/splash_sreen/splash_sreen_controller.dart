import 'package:get/get.dart';

class SplashSreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      return Get.offNamed('/home');
    });
    super.onInit();
  }
}
