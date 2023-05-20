


import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';

class ScrollableController extends GetxController {

  final scrollController = ScrollController();
  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1 ? 270 : index == 2 ? 255 : index == 3 ? 280 : index == 4 ? 280 : 300;
    controller.animateTo(
      AppDimensions.normalize( offset * index.toDouble() ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }


  scrollMobile(int index) {
    double offset = index == 1 ? 285 : index == 2 ? 300 : index == 3 ? 310 : index == 4 ? 315 : 350;
    controller.animateTo(
      AppDimensions.normalize( offset * index.toDouble() ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

}