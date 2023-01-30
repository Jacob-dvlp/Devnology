import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/model_produt.dart';
import '../pages/cart/cart_controller.dart';
import '../pages/home/home_controller.dart';
import '../utils/format_number_currency.dart';

class CustomCardWidgetCart extends StatelessWidget {
  final ModelProdut produt;
  final int index;
  final HomeController controllerhome;
  const CustomCardWidgetCart({
    Key? key,
    required this.produt,
    required this.index,
    required this.controllerhome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 4, right: 8, bottom: 80),
            // maxRadius: 60,
            child: Image.asset(
              produt.image,
              width: 100,
              height: 100,
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  produt.subtitle,
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 8, top: 2),
                  child: Text(
                    FormatDoubleToCurrency.convertDouble(produt.price),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                GetBuilder<CartController>(
                  init: CartController(),
                  builder: (controller) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.removeProdutFromCart(
                              controllerhome.modelProdut[index],
                            );
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            controllerhome.modelProdut[index].count.toString(),
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.addProdutFromCart(
                              controllerhome.modelProdut[index]),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
