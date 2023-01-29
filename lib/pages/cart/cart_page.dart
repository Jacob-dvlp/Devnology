import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_app_bar.dart';
import 'cart_controller.dart';

class CartPage extends GetView<CartController> {
  const CartPage({Key? key}) : super(key: key);
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isCart: false,
        flag: true,
      ),
      body: Container(),
    );
  }
}
