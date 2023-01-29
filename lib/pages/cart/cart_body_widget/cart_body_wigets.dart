import 'package:flutter/material.dart';

import 'cart_body_footer_widget.dart';

class CartBodyWiget extends StatelessWidget {
  const CartBodyWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 592),
            child: CartBodyFooterWidget(),
          ),
        ],
      ),
    );
  }
}
