import 'package:flutter/material.dart';

import '../../../utils/image/app_image.dart';
import '../../../utils/theme/app_theme.dart';
import '../../../widget/custom_widget_container_circl_category.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Categories",
            style: TextStyle(
                color: Color(0XFF2E3746),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Row(
                children: [
                  CustomWidgetContainerCirclCategory(
                      title: "Apparel",
                      colorGradient: [
                        AppTheme.linearGradient2Apparel,
                        AppTheme.linearGradient1Apparel,
                      ],
                      img: AppImage.iconApparel),
                  const SizedBox(
                    width: 22.0,
                  ),
                  CustomWidgetContainerCirclCategory(
                      title: "Beauty",
                      colorGradient: [
                        AppTheme.linearGradient2Beauty,
                        AppTheme.linearGradient1Beauty,
                      ],
                      img: AppImage.iconsBeauty),
                  const SizedBox(
                    width: 22.0,
                  ),
                  CustomWidgetContainerCirclCategory(
                      title: "Shoes",
                      colorGradient: [
                        AppTheme.linearGradient2Shoes,
                        AppTheme.linearGradient1Shoes,
                      ],
                      img: AppImage.iconsShoes),
                  const SizedBox(
                    width: 22.0,
                  ),
                  CustomWidgetContainerCirclCategory(
                    title: "See All",
                    colorGradient: const [Colors.white, Colors.white],
                    img: AppImage.seeall,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
