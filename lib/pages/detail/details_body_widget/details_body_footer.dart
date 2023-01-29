import 'package:flutter/material.dart';

class DetailsBodyFooter extends StatelessWidget {
  const DetailsBodyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 25,
        top: 20,
      ),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          "Price:",
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "\$ 1,519.99",
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          text1,
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ]),
    );
  }
}

const text1 = """
1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520
Windows 10 Pro 64-Bit Edition
1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520
""";
