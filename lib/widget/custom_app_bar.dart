import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/model_produt.dart';
import '../utils/image/app_image.dart';
import '../utils/theme/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool flag;
  final bool isCart;
  const CustomAppBar({Key? key, this.flag = true, this.isCart = false})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: AppTheme.background,
      child: Padding(
        padding: flag
            ? const EdgeInsets.only(left: 27, top: 21.71, right: 20)
            : const EdgeInsets.only(left: 19.7, top: 21.71, right: 21),
        child: Row(
            mainAxisAlignment:
                flag ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
            children: [
              flag
                  ? Container()
                  : GestureDetector(
                      onTap: () => Get.back(),
                      child: const SizedBox(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(AppImage.arrowone),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.27, right: 10.27),
                    child: SizedBox(
                      child: Image.asset(AppImage.logonanme),
                    ),
                  ),
                  SizedBox(
                    child: Image.asset(AppImage.arrowtwo),
                  )
                ],
              ),
              flag
                  ? Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Row(
                        children: [
                          SizedBox(child: Image.asset(AppImage.iconmsg)),
                          const SizedBox(
                            width: 30.49,
                          ),
                          const SizedBox(
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  : isCart
                      ? Stack(
                          children: [
                            const SizedBox(
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppTheme.secondaryColor,
                                      borderRadius: BorderRadius.circular(100)),
                                  width: 18,
                                  height: 18,
                                  child: Center(
                                      child: Text(
                                    ModelProdut.modelProdut.length.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  )),
                                )),
                          ],
                        )
                      : Container()
            ]),
      ),
    );
  }
}
