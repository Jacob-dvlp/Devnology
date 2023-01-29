import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_app_bar.dart';
import 'order_placed_controller.dart';
import 'orderplaced_body_widget/order_placed_body_widget.dart';

class OrderPlacedPage extends GetView<OrderPlacedController> {
  const OrderPlacedPage({Key? key}) : super(key: key);
  static String routeName = '/order';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        isCart: false,
        flag: false,
      ),
      body: OrderPlacedBodyWidget(),
    );
  }
}
