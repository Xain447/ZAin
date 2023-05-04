


import 'dart:math';
import 'package:flutter/widgets.dart';

class UserInterface {
  static MediaQueryData? mediaQueryData;
  static double? width;
  static double? height;
  static double? horizontal;
  static double? vertical;
  static EdgeInsets? padding;
  static EdgeInsets? viewInsects;
  static double? safeAreaHorizontal;
  static double? safeAreaVertical;
  static double? safeWidth;
  static double? safeHeight;
  static double? diagonal;
  static bool? xxs;
  static bool? xs;
  static bool? sm;
  static bool? md;
  static bool? xmd;
  static bool? lg;
  static bool? xl;
  static bool? xlg;
  static bool? xxlg;

  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    initChecks(mediaQueryData!);

    padding = mediaQueryData!.padding;
    viewInsects = mediaQueryData!.viewInsets;
    width = mediaQueryData!.size.width;
    height = mediaQueryData!.size.height;
    horizontal = width! / 100;
    vertical = height! / 100;

    safeAreaHorizontal = mediaQueryData!.padding.left + mediaQueryData!.padding.right;
    safeAreaVertical = mediaQueryData!.padding.top + mediaQueryData!.padding.bottom;
    safeWidth = (width! - safeAreaHorizontal!);
    safeHeight = (height! - safeAreaVertical!);
  }

  static initChecks(MediaQueryData query) {
    var size = query.size;
    diagonal = sqrt((size.width * size.width) + (size.height * size.height));
    xxs = size.width > 300;
    xs = size.width > 360;
    sm = size.width > 480;
    md = size.width > 600;
    xmd = size.width > 720;
    lg = size.width > 980;
    xl = size.width > 1160;
    xlg = size.width > 1400;
    xxlg = size.width > 1700;
  }

  static MediaQueryData mediaQuery() => mediaQueryData!;

  static Size getSize() => mediaQueryData!.size;
}
