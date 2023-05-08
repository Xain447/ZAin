


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.h1b!.copyWith(
        fontFamily: 'Montserrat',
        height: 1,
        fontSize: AppDimensions.normalize(10),
        color: ColorManager.whiteColor
      ),
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String text;
  const SubHeadingText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.l1!.copyWith(
        fontFamily: 'Montserrat',
      ),
    );
  }
}
