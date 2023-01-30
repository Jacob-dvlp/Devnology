import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/model_produt.dart';
import '../../../utils/format_number_currency.dart';
import '../detail_controller.dart';

class DetailsBodyFooter extends StatelessWidget {
  const DetailsBodyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 25,
        top: 10,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Price:",
          textAlign: TextAlign.justify,
          style: GoogleFonts.roboto(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        const SizedBox(
          height: 10,
        ),
        GetBuilder<DetailController>(
          init: DetailController(),
          builder: (controller) {
            final ModelProdut price = controller.argument[0];
            return Text(
              FormatDoubleToCurrency.convertDouble(price.price)
                  .toString(),
              textAlign: TextAlign.justify,
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w900, fontSize: 26),
            );
          },
        ),
        const SizedBox(
          height: 14,
        ),
        Text("About this item:",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            )),
        const SizedBox(
          height: 10,
        ),
        GetBuilder<DetailController>(
          init: DetailController(),
          builder: (controller) {
            final ModelProdut content = controller.argument[0];

            return Text(
              content.content,
              textAlign: TextAlign.justify,
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
            );
          },
        )
      ]),
    );
  }
}
