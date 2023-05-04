


import 'package:flutter/material.dart';
import 'app_dimensions.dart';
import 'userInterface.dart';

extension SuperEdgeInsets on EdgeInsets {

  EdgeInsets sv() {
    return copyWith(
      top: top + UserInterface.padding!.top,
      bottom: bottom + UserInterface.padding!.bottom,
    );
  }

  EdgeInsets st() {
    return copyWith(top: top + UserInterface.padding!.top);
  }

  EdgeInsets sb() {
    return copyWith(bottom: bottom + UserInterface.padding!.bottom);
  }

  EdgeInsets b(double no) {
    return copyWith(bottom: AppDimensions.space(no));
  }

  EdgeInsets t(double no) {
    return copyWith(top: AppDimensions.space(no));
  }

  EdgeInsets l(double no) {
    return copyWith(left: AppDimensions.space(no));
  }

  EdgeInsets r(double no) {
    return copyWith(right: AppDimensions.space(no));
  }
}
