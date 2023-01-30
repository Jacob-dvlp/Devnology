import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/model_produt.dart';
import '../utils/image/app_image.dart';
import '../utils/theme/app_theme.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final dynamic controller;
  const CustomBottomNavigationBar({Key? key, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: AppTheme.background,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  controller.homePage();
                },
                child: Column(
                  children: [
                    Image.asset(
                      AppImage.home,
                      scale: 0.8,
                      color: controller.isHomePage
                          ? AppTheme.secondaryColor
                          : Colors.white,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.roboto(
                        color: controller.isHomePage
                            ? AppTheme.secondaryColor
                            : Colors.white,
                      ),
                    )
                  ],
                )),
            Column(
              children: [
                Image.asset(
                  AppImage.search,
                  scale: 0.8,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Search",
                  style: GoogleFonts.roboto(color: Colors.white),
                )
              ],
            ),
            GestureDetector(
                onTap: () {
                  controller.cartPage();
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: controller.isCart
                              ? AppTheme.secondaryColor
                              : Colors.white,
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            left: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppTheme.secondaryColor,
                                  borderRadius: BorderRadius.circular(100)),
                              width: 15,
                              height: 15,
                              child: Center(
                                  child: Text(
                                ModelProdut.modelProdut.length.toString(),
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              )),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Cart",
                      style: GoogleFonts.roboto(
                          color: controller.isCart
                              ? AppTheme.secondaryColor
                              : Colors.white),
                    )
                  ],
                )),
            Column(
              children: [
                Image.asset(
                  AppImage.person,
                  scale: 0.8,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Profile",
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Menu",
                  style: GoogleFonts.roboto(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
