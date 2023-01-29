import 'package:get/get.dart';
import './bottom_navigator_bar_controller.dart';

class BottomNavigatorBarBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(BottomNavigatorBarController());
    }
}