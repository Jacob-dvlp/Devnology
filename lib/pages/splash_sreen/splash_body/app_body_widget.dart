import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/image/app_image.dart';
import '../../../utils/theme/app_theme.dart';

class AppBodyWidget extends StatelessWidget {
  const AppBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      width: Get.width,
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(AppImage.logo)],
      ),
    );
  }
}
