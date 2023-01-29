import 'package:get/get.dart';

import '../pages/cart/cart_page.dart';
import '../pages/detail/detail_page.dart';
import '../pages/home/home_page.dart';
import '../pages/order placed/order_placed_page.dart';
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
    GetPage(
      name: DetailPage.routeName,
      page: () => const DetailPage(),
    ),
    GetPage(
      name: CartPage.routeName,
      page: () => const CartPage(),
    ),
    GetPage(
      name: OrderPlacedPage.routeName,
      page: () => const OrderPlacedPage(),
    ),
  ];
}
