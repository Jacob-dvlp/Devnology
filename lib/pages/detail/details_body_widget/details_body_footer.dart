import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model_produt.dart';
import '../detail_controller.dart';

class DetailsBodyFooter extends StatelessWidget {
  const DetailsBodyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 25,
        top: 20,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Price:",
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        const SizedBox(
          height: 10,
        ),
        GetBuilder<DetailController>(
          init: DetailController(),
          builder: (controller) {
            final ModelProdut price = controller.argument[0];
            return Text(
              "\$ ${price.price}",
              textAlign: TextAlign.justify,
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        GetBuilder<DetailController>(
          init: DetailController(),
          builder: (controller) {
            final ModelProdut content = controller.argument[0];

            return Text(
              content.content,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            );
          },
        )
      ]),
    );
  }
}

