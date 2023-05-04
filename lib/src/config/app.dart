


import 'package:flutter/material.dart';
import 'app_dimensions.dart';
import 'space.dart';
import 'typography.dart';
import 'userInterface.dart';
import 'userInterface_props.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    UserInterface.init(context);
    AppDimensions.init();
    UserInterfaceProps.init();
    Space.init();
    AppText.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
