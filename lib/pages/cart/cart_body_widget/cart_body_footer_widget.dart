import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/image/app_image.dart';
import '../../../utils/theme/app_theme.dart';
import '../../../widget/custom_container_details.dart';
import '../../order_placed/order_placed_page.dart';

class CartBodyFooterWidget extends StatelessWidget {
  const CartBodyFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      decoration: BoxDecoration(color: AppTheme.backgrounContainer),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  "\$ 2,237.79",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: GestureDetector(
                onTap: () => Get.toNamed(OrderPlacedPage.routeName),
                child: CustomContainerDetails(
                  name: "CHECKOUT",
                  img: AppImage.keyboardarrowright,
                  color: AppTheme.background,
                  colorText: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
