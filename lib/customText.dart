import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String data;
  final double? fontsize;
  final FontWeight? fontWeight;
  const CustomText(
      {Key? key,
      required this.data,
      this.fontsize = 14,
      this.fontWeight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.alef(fontSize: fontsize, fontWeight: fontWeight),
    );
  }
}
