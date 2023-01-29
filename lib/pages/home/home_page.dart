import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/image/app_image.dart';
import '../../utils/theme/app_theme.dart';
import 'home_body_widget/home_body_widget.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: AppTheme.background,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImage.home,
                    scale: 0.8,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImage.search,
                    scale: 0.8,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImage.person,
                    scale: 0.8,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: const HomeBodyWidget(),
    );
  }
}
