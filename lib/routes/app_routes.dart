import 'package:get/get.dart';

import '../pages/splash_sreen/splash_sreen_page.dart';

class AppRoutes {
  static final List<GetPage> route = [
    GetPage(
      name: SplashSreenPage.routeName,
      page: () => const SplashSreenPage(),
    )
  ];
}
