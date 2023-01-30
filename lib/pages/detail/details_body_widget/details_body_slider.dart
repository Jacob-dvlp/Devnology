import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../detail_controller.dart';

class DetailsBodySlider extends StatelessWidget {
  final DetailController controller;
  const DetailsBodySlider({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = controller.imgList
        .map((item) => SizedBox(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          item,
                          fit: BoxFit.cover,

                          //  scale: 0.10,
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Column(
      children: [
        SizedBox(
            child: CarouselSlider(
          carouselController: controller.controller,
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 2,
            autoPlay: true,
            onPageChanged: (index, reason) {
              controller.chenge(index);
            },
          ),
          items: imageSliders,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: controller.imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => controller.controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(
                            controller.current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
