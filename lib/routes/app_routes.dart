import 'package:get/get.dart';

import '../pages/bottom_navigator_bar/bottom_navigator_bar_bindings.dart';
import '../pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import '../pages/cart/cart_bindings.dart';
import '../pages/cart/cart_page.dart';
import '../pages/detail/detail_bindings.dart';
import '../pages/detail/detail_page.dart';
import '../pages/home/home_bindings.dart';
import '../pages/home/home_page.dart';
import '../pages/order_placed/order_placed_bindings.dart';
import '../pages/order_placed/order_placed_page.dart';
import '../pages/splash_sreen/splash_sreen_page.dart';

class AppRoutes {
  static final List<GetPage> route = [
    GetPage(
      name: SplashSreenPage.routeName,
      page: () => const SplashSreenPage(),
    ),
    GetPage(
        name: BottomNavigatorBarPage.routeName,
        page: () => const BottomNavigatorBarPage(),
        binding: BottomNavigatorBarBindings()),
    GetPage(
        name: HomePage.routeName,
        page: () => const HomePage(),
        binding: HomeBindings()),
    GetPage(
        name: DetailPage.routeName,
        page: () => const DetailPage(),
        binding: DetailBindings()),
    GetPage(
        name: CartPage.routeName,
        page: () => const CartPage(),
        binding: CartBindings()),
    GetPage(
        name: OrderPlacedPage.routeName,
        page: () => const OrderPlacedPage(),
        binding: OrderPlacedBindings()),
  ];
}
