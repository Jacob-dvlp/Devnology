import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor _theme = MaterialColor(
    0XFF2E3746,
    {
      50: Color(0XFF29323f),
      100: Color(0XFF252c38),
      200: Color(0XFF202731),
      300: Color(0XFF1c212a),
      400: Color(0XFF171c23),
      500: Color(0XFF12161c),
      600: Color(0XFF0e1015),
      700: Color(0XFF090b0e),
      800: Color(0XFF050507),
      900: Color(0XFF000000),
    },
  );
  static  Color background = const Color(0XFF2E3746);
  static final ThemeData themeData =
      ThemeData(primaryColor: const Color(0XFF2E3746), primarySwatch: _theme);
}
