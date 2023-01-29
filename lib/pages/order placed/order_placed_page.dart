import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_app_bar.dart';
import 'order_placed_controller.dart';

class OrderPlacedPage extends GetView<OrderPlacedController> {
  const OrderPlacedPage({Key? key}) : super(key: key);
  static String routeName = '/order';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isCart: false,
        flag: false,
      ),
      body: Container(),
    );
  }
}
