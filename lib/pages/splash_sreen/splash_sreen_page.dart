import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_sreen_controller.dart';

class SplashSreenPage extends GetView<SplashSreenController> {
  const SplashSreenPage({Key? key}) : super(key: key);
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashSreenPage'),
      ),
      body: Container(),
    );
  }
}
