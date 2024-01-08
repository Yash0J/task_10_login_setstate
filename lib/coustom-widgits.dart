import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_10_login_setstate/colors.dart';

class Coustom {
  static Text text({
    String? text,
    TextAlign? textAlign,
    double? fontSize = 14,
    FontWeight? fontWeight,
    Color? colors = const Color(0xffe6e1e4),
  }) {
    return Text(text!,
        textAlign: textAlign,
        style: GoogleFonts.workSans(
          // fontSize: 26,
          // fontWeight: FontWeight.w600,

          fontSize: fontSize,
          fontWeight: fontWeight,
          color: colors,
        ));
  }
}
