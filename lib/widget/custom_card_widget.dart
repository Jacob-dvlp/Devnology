import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/detail/detail_page.dart';
import '../utils/image/app_image.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0, left: 11.0),
      child: GestureDetector(
        onTap: () => Get.toNamed(DetailPage.routeName),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: 150,
          height: 80,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 11, top: 6),
                child: SizedBox(
                  child: Image.asset(AppImage.pc1),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8, top: 2),
                    child: Text("Lenovo - IdeaPad L340 15 Gaming"),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8, top: 2),
                    child: Text(
                      "\$ 717,80",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
