import 'package:flutter/material.dart';

import '../../../widget/custom_app_bar.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        flag: true,
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
