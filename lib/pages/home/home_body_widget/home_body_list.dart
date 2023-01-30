import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model_produt.dart';
import '../../../widget/custom_card_widget.dart';
import '../home_controller.dart';

class HomeBodyList extends GetView<HomeController> {
  const HomeBodyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 200,
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return ListView.builder(
              itemCount: controller.modelProdut.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final ModelProdut model = controller.modelProdut[index];
                return CustomCardWidget(
                  modelProdut: model,
                );
              },
            );
          },
        ));
  }
}
