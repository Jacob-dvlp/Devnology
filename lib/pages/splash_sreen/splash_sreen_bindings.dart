import 'package:get/get.dart';
import './splash_sreen_controller.dart';

class SplashSreenBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SplashSreenController());
    }
}