import 'package:get/get.dart';

import 'order_placed_controller.dart';

class OrderPlacedBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OrderPlacedController());
  }
}
