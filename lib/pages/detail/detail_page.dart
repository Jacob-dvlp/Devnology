import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_app_bar.dart';
import 'detail_controller.dart';
import 'details_body_widget/details_body_header.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);
  static String routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isCart: false,
        flag: true,
      ),
      body: Column(
        children: const [
          DetailsBodyHeader(),
        ],
      ),
    );
  }
}
