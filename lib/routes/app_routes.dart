import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import '../pages/splash_sreen/splash_sreen_page.dart';

class AppRoutes {
  static final List<GetPage> route = [
    GetPage(
      name: SplashSreenPage.routeName,
      page: () => const SplashSreenPage(),
    ),
     GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
    ),
  ];
}
