import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_bottom_navigation_bar.dart';
import '../cart/cart_page.dart';
import '../home/home_page.dart';
import 'bottom_navigator_bar_controller.dart';

class BottomNavigatorBarPage extends StatelessWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);
  static String routeName = '/navigator';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigatorBarController>(
      init: BottomNavigatorBarController(),
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: controller.isCart
              ? const SizedBox()
              : CustomBottomNavigationBar(controller: controller),
          body: controller.isHomePage ? const HomePage() : const CartPage(),
        );
      },
    );
  }
}
