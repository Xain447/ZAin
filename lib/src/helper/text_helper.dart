



import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

Text textStyle00({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 8,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w200,
    ),
  );
}

Text textStyle0({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 11,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.normal,
    ),
  );
}

Text textStyle0_5({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    maxLines: 1,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 12,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text textStyle0_15({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 13,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.normal,
    ),
  );
}

Text textStyle1({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 14,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w200,
    ),
  );
}

Text textStyle11({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 12,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text textStyle1_5({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 15,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.underline,
    ),
  );
}

Text textStyle2({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    maxLines: 2,
    style: GoogleFonts.openSans(
      fontSize: 17,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text textStyle2_1({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    maxLines: 2,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 14,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text textStyle3({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 18,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w400,
    ),
  );
}

Text textStyle3_1({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 18,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text textStyle4({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 23,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w700,
    ),
  );
}

Text textStyle4_1({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 20,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.normal,
    ),
  );
}

Text textStyle5({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 22,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text textStyle5_1({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 22,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text textStyle6({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 24,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w700,
    ),
  );
}

Text textStyle7({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 28,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w800,
    ),
  );
}

Text textStyle8({required String text, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.openSans(
      fontSize: 30,
      color: color ?? ColorManager.blackColor,
      fontWeight: FontWeight.w900,
    ),
  );
}
