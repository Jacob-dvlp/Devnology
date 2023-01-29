import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../detail_controller.dart';

class DetailsBodyHeader extends StatelessWidget {
  const DetailsBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 20,
      ),
      child: SizedBox(
          child: GetBuilder<DetailController>(
        init: DetailController(),
        builder: (controller) {
          return Text(
            controller.argument[0],
            textAlign: TextAlign.justify,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          );
        },
      )),
    );
  }
}

const text1 = """
Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB SSD, NVIDIA Quadro P520, Windows 10 Pro (20T4001VUS)
""";
