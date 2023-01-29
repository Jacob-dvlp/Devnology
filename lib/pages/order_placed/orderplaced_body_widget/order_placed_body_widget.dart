import 'package:flutter/material.dart';

import '../../../utils/image/app_image.dart';
import '../../../utils/theme/app_theme.dart';
import '../../../widget/custom_container_details.dart';

class OrderPlacedBodyWidget extends StatelessWidget {
  const OrderPlacedBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      /// crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 101,
            height: 101,
            decoration: BoxDecoration(
                color: AppTheme.background,
                borderRadius: BorderRadius.circular(90)),
            child: Image.asset(AppImage.check),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "Order Placed!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 23, right: 45, left: 40),
          child: Text(
            text1,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: CustomContainerDetails(
            name: "MY ORDERS",
            img: AppImage.keyboardarrowright,
            color: AppTheme.background,
            colorText: Colors.white,
          ),
        ),
      ],
    );
  }
}

const text1 = """
Your order was placed successfully. For more details, check All My Orders page under Profile tab
""";
