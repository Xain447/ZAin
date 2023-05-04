


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'app_dimensions.dart';


abstract class UserInterfaceProps {

  // Animations
  static Duration duration = const Duration(milliseconds: 280);
  static Duration duration2 = const Duration(milliseconds: 400);

  // Paddings
  static EdgeInsets? btnPadMed;
  static EdgeInsets? btnPadSm;

  // Radius
  static double radius = 6.0;
  static BorderRadius? tabRadius;
  static BorderRadius? buttonRadius;
  static BorderRadius? cardRadius;
  static BoxDecoration? borderButton;

  // Shadows
  static List<BoxShadow>? cardShadow;

  // BoxDecoration
  static BoxDecoration? boxCard;

  static init() {
    initRadius();
    initButtons();
    initShadows();
    initBoxDecorations();
  }

  static initRadius() {
    tabRadius = BorderRadius.circular(radius * 2);
    buttonRadius = BorderRadius.circular(radius);
    cardRadius = BorderRadius.circular(radius * 2);
  }

  static initButtons() {
    borderButton = BoxDecoration(
      borderRadius: UserInterfaceProps.buttonRadius,
      border: Border.all(
        width: 1.4,
        color: ColorManager.goldColor,
      ),
    );
    btnPadSm = EdgeInsets.symmetric(
      horizontal: AppDimensions.padding! * 2,
      vertical: AppDimensions.padding! * 1.0,
    );
    btnPadMed = EdgeInsets.symmetric(
      horizontal: AppDimensions.padding! * 3,
      vertical: AppDimensions.padding! * 1.5,
    );
  }

  static initShadows() {
    cardShadow = [
      const BoxShadow(
        color: ColorManager.lightBlackColor,
        blurRadius: 6,
      ),
    ];
  }

  static initBoxDecorations() {
    boxCard = BoxDecoration(
      borderRadius: cardRadius,
      boxShadow: cardShadow,
      color: ColorManager.blueColor,
    );
  }
}
