import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/model_produt.dart';
import '../../../widget/custom_card_widget_cart.dart';
import '../../home/home_controller.dart';
import '../cart_controller.dart';
import 'cart_body_footer_widget.dart';

class CartBodyWiget extends GetView<CartController> {
  const CartBodyWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 25,
              ),
              child: Text(
                'Cart',
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return SizedBox(
                  height: 430,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      bottom: 0,
                      top: 0,
                    ),
                    shrinkWrap: true,
                    itemCount: controller.modelProdut.length,
                    itemBuilder: (context, index) {
                      final ModelProdut product = controller.modelProdut[index];
                      return CustomCardWidgetCart(
                        produt: product,
                        index: index,
                        controllerhome: controller,
                      );
                    },
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: CartBodyFooterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
