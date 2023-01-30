import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/model_produt.dart';
import '../pages/detail/detail_page.dart';
import '../utils/format_number_currency.dart';

class CustomCardWidget extends StatelessWidget {
  final ModelProdut modelProdut;
  const CustomCardWidget({Key? key, required this.modelProdut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23.0, left: 11.0),
      child: GestureDetector(
        onTap: () =>
            Get.toNamed(DetailPage.routeName, arguments: [modelProdut]),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width / 3,
          //  height: MediaQuery.of(context).size.height / 2,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 11, top: 6),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      modelProdut.image,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, top: 15),
                      child: Text(
                        modelProdut.name,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 2),
                      child: Text(
                        FormatDoubleToCurrency.convertDouble(modelProdut.price),
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
