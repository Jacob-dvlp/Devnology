import 'package:flutter/material.dart';

import 'home_body_widget/home_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyWidget(),
    );
  }
}
