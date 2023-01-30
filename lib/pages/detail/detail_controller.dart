import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

import '../../utils/image/app_image.dart';

class DetailController extends GetxController {
  final argument = Get.arguments;
  final List<String> imgList = [
    AppImage.slider1,
    AppImage.slider2,
    AppImage.slider3,
  ];
  int current = 0;
  final CarouselController controller = CarouselController();

  chenge(int index) {
    current = index;
    update();
  }
}
