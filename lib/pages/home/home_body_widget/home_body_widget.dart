import 'package:flutter/material.dart';

import '../../../utils/theme/app_theme.dart';
import '../../../widget/custom_app_bar.dart';
import 'home_body_category.dart';
import 'home_body_list.dart';
import 'home_body_slider.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.backgroundHome,
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, top: 30),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomCategory(),
                SizedBox(
                  height: 22,
                ),
                HomeBodySlider(),
                SizedBox(
                  height: 17,
                ),
                HomeBodyList()
              ],
            ),
          ),
        ));
  }
}
