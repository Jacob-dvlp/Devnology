import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/model_produt.dart';
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
          final ModelProdut subtitle = controller.argument[0];
          return Text(
            subtitle.subtitle,
            textAlign: TextAlign.justify,
            style:   GoogleFonts.roboto(fontWeight: FontWeight.w700, fontSize: 15),
          );
        },
      )),
    );
  }
}
