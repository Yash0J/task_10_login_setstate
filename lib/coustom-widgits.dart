// ignore_for_file: file_names, unused_import

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
        style: GoogleFonts.openSans(
          // fontSize: 26,
          // fontWeight: FontWeight.w600,

          fontSize: fontSize,
          fontWeight: fontWeight,
          color: colors,
        ));
  }

  //
  static TextStyle style({
    TextAlign? textAlign,
    double? fontSize = 14,
    FontWeight? fontWeight,
    Color? colors = const Color(0xffe6e1e4),
  }) {
    return GoogleFonts.openSans(
      // fontSize: 26,
      // fontWeight: FontWeight.w600,

      fontSize: fontSize,
      fontWeight: fontWeight,
      color: colors,
    );
  }
}
