import 'package:flutter/material.dart';

import '../../../widget/custom_card_widget.dart';

class HomeBodyList extends StatelessWidget {
  const HomeBodyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          CustomCardWidget(),
          CustomCardWidget(),
          CustomCardWidget(),
          CustomCardWidget()
        ],
      ),
    );
  }
}
