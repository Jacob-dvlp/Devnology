import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_body_widget/home_body_widget.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyWidget(),
    );
  }
}
