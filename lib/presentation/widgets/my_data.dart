

import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class MyData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment? alignment;

  const MyData({Key? key, required this.data, required this.information, this.alignment }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: AppText.l1b!.copyWith(
                color: ColorManager.blueColor,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: AppText.l1!.copyWith(
                color: ColorManager.blueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
