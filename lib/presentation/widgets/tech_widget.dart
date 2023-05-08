


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/helper/helper.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.play_arrow,
          color: ColorManager.whiteColor,
          size: AppDimensions.normalize(6),
        ),
        buildSpaceHorizontal(5),
        Text(
          " $techName ",
          style: AppText.l1b,
        )
      ],
    );
  }
}
