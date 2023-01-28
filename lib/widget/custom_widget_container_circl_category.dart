import 'package:flutter/material.dart';

class CustomWidgetContainerCirclCategory extends StatelessWidget {
  final String title;
  final String img;
  final bool isicon;
  final List<Color> colorGradient;
  const CustomWidgetContainerCirclCategory(
      {Key? key,
      required this.title,
      required this.colorGradient,
      required this.img,
      this.isicon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: colorGradient),
          ),
          child: Image.asset(img),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(isicon ? "See All" : title)
      ],
    );
  }
}
