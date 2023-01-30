import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_bottom_navigation_bar.dart';
import '../bottom_navigator_bar/bottom_navigator_bar_controller.dart';
import '../home/home_page.dart';
import 'cart_body_widget/cart_body_wigets.dart';
import 'cart_controller.dart';

class CartPage extends GetView<CartController> {
  const CartPage({Key? key}) : super(key: key);
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigatorBarController>(
      init: BottomNavigatorBarController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(
            isCart: false,
            flag: true,
          ),
          extendBodyBehindAppBar: true,
          bottomNavigationBar:
              CustomBottomNavigationBar(controller: controller),
          body: controller.isCart ? const CartBodyWiget() : const HomePage(),
        );
      },
    );
  }
}
