



import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'text_helper.dart';

successToast(String title, BuildContext context) {
  SnackBar snackBar = SnackBar(
    content: textStyle2(text: title, color: ColorManager.whiteColor),
    backgroundColor: ColorManager.primaryColor,
    padding: const EdgeInsets.all(20),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

errorToast(String title, BuildContext context) {
  SnackBar snackBar = SnackBar(
    content: textStyle2(text: title, color: ColorManager.whiteColor),
    backgroundColor: ColorManager.redColor,
    padding: const EdgeInsets.all(20),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Future<bool> isInternet() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    if (await InternetConnectionChecker().hasConnection) {
      return true;
    } else {
      return false;
    }
  } else if (connectivityResult == ConnectivityResult.wifi) {
    if (await InternetConnectionChecker().hasConnection) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

SizedBox buildSpaceVertical(height) => SizedBox(height: height);

SizedBox buildSpaceHorizontal(width) => SizedBox(width: width);

//import 'package:loading_animation_widget/loading_animation_widget.dart';
//LoadingAnimationWidget.staggeredDotsWave(color: ColorManager.goldColor, size: ValuesManager.vm100),
