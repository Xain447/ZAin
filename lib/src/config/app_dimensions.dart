


import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'userInterface.dart';

class AppDimensions {

  static double? maxContainerWidth;
  static double? miniContainerWidth;
  static bool? isLandscape;
  static double? padding;
  static double ratio = 0;
  static Size? size;


  static init() {
    ratio = UserInterface.width! / UserInterface.height!;
    double pixelDensity = UserInterface.mediaQuery().devicePixelRatio;
    ratio = (ratio) + ((pixelDensity + ratio) / 2);
    if (UserInterface.width! <= 380 && pixelDensity >= 3) {
      ratio *= 0.85;
    }
    _initLargeScreens();
    _initSmallScreensHighDensity();
    padding = ratio * 3;
  }

  static _initLargeScreens() {
    const safe = 2.4;
    ratio *= 1.5;
    if (ratio > safe) {
      ratio = safe;
    }
  }

  static _initSmallScreensHighDensity() {
    if (!UserInterface.sm! && ratio > 2.0) {
      ratio = 2.0;
    }
    if (!UserInterface.xs! && ratio > 1.6) {
      ratio = 1.6;
    }
    if (!UserInterface.xxs! && ratio > 1.4) {
      ratio = 1.4;
    }
  }

  static String inString() {
    final x = UserInterface.width! / UserInterface.height!;
    final ps = ui.window.physicalSize;
    return """
      Width: ${UserInterface.width} | ${ps.width}
      Height: ${UserInterface.height} | ${ps.height}
      app_ratio: $ratio
      ratio: $x
      pixels: ${UserInterface.mediaQuery().devicePixelRatio}
    """;
  }

  static double space([double multiplier = 1.0]) {
    return AppDimensions.padding! * 3 * multiplier;
  }

  static double normalize(double unit) {
    return (AppDimensions.ratio * unit * 0.77) + unit;
  }

  static double font(double unit) {
    return (AppDimensions.ratio * unit * 0.125) + unit * 1.90;
  }
}
