import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'pages/splash_sreen/splash_sreen_page.dart';
import 'routes/app_routes.dart';
import 'utils/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashSreenPage.routeName,
      getPages: AppRoutes.route,
    );
  }
}
