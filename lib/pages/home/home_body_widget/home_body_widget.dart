import 'package:flutter/material.dart';

import '../../../utils/theme/app_theme.dart';
import '../../../widget/custom_app_bar.dart';
import 'home_widget_category.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.backgroundHome,
        appBar: const CustomAppBar(),
        body: const Padding(
          padding: EdgeInsets.only(left: 25, top: 30),
          child: CustomCategory(),
        ));
  }
}
