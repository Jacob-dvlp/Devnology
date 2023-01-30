import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../../utils/image/app_image.dart';
import '../../utils/theme/app_theme.dart';
import '../../widget/custom_app_bar.dart';
import '../../widget/custom_container_details.dart';
import '../bottom_navigator_bar/bottom_navigator_bar_controller.dart';
import '../cart/cart_page.dart';
import 'detail_controller.dart';
import 'details_body_widget/details_body_footer.dart';
import 'details_body_widget/details_body_header.dart';
import 'details_body_widget/details_body_slider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  static String routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        isCart: true,
        flag: false,
      ),
      bottomNavigationBar: Container(
        width: 375,
        height: 86,
        decoration: BoxDecoration(color: AppTheme.backgrounContainer),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 23, bottom: 23, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Share.share("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSOVAuvHLtFrapM1jNQDgt4HE9jOuq-ynhAQ&usqp=CAU",
                      subject: "");
                },
                child: CustomContainerDetails(
                    name: "SHARE THIS",
                    img: AppImage.keyboardarrowup,
                    colorText: AppTheme.background,
                    color: Colors.white),
              ),
              GetBuilder<BottomNavigatorBarController>(
                init: BottomNavigatorBarController(),
                builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(CartPage.routeName);
                      controller.isCart = true;
                      controller.isHomePage = false;
                    },
                    child: CustomContainerDetails(
                      name: "ADD TO CART",
                      img: AppImage.keyboardarrowright,
                      color: AppTheme.background,
                      colorText: Colors.white,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Flexible(child: DetailsBodyHeader()),
          GetBuilder<DetailController>(
            init: DetailController(),
            builder: (controller) {
              return DetailsBodySlider(controller: controller);
            },
          ),
          const DetailsBodyFooter()
        ],
      ),
    );
  }
}
