import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/image/app_image.dart';

class HomeBodySlider extends StatelessWidget {
  const HomeBodySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest',
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ListView(
              padding: const EdgeInsets.all(14),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  child: Image.asset(AppImage.slider),
                ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  child: Image.asset(AppImage.slider),
                ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  child: Image.asset(AppImage.slider),
                ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  child: Image.asset(AppImage.slider),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
