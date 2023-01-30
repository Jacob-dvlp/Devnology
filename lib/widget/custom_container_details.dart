import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainerDetails extends StatelessWidget {
  final String name;
  final String img;
  final Color color;
  final Color colorText;
  const CustomContainerDetails(
      {Key? key,
      required this.name,
      required this.img,
      required this.color,
      required this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
      width: 140,
      height: 40,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, top: 13, bottom: 13, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              name,
              style:  GoogleFonts.roboto(
                  color: colorText, fontSize: 12, fontWeight: FontWeight.w900),
            ),
            Image.asset(img)
          ],
        ),
      ),
    );
  }
}
