


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/helper/helper.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class ClipperRightWidget extends StatelessWidget {
  final String title, company, date, location, url, website;
  const ClipperRightWidget({Key? key, required this.title, required this.company,
    required this.date, required this.location, required this.url, required this.website}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8, right: 5, bottom: 5),
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                  color: ColorManager.secondaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorManager.whiteColor),
              ),
            ),
            Text(
              " $title",
              style: AppText.l1!.copyWith(
                  fontSize: AppDimensions.font(9),
                  color: ColorManager.whiteColor
              ),

            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 17),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: ColorManager.whiteColor))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSpaceVertical(10),
              Row(
                children: [
                  buildSpaceHorizontal(10),
                  const Icon(Icons.account_circle_sharp, color: ColorManager.secondaryColor, size: 15,),
                  buildSpaceHorizontal(15),
                  Text(
                    " $company ",
                    style: AppText.l1b!.copyWith(
                        fontSize: AppDimensions.font(6),
                        color: ColorManager.whiteColor
                    ),
                  ),
                ],
              ),
              buildSpaceVertical(10),
              Row(
                children: [
                  buildSpaceHorizontal(10),
                  const Icon(Icons.timelapse_rounded, color: ColorManager.secondaryColor, size: 15,),
                  buildSpaceHorizontal(15),
                  Text(
                    " $date ",
                    style: AppText.l1b,
                  ),
                ],
              ),
              buildSpaceVertical(10),
              Row(
                children: [
                  buildSpaceHorizontal(10),
                  const Icon(Icons.location_on_sharp, color: ColorManager.secondaryColor, size: 15,),
                  buildSpaceHorizontal(15),
                  Text(
                    " $location ",
                    style: AppText.l1b,
                  ),
                ],
              ),
              buildSpaceVertical(10),
              InkWell(
                hoverColor: ColorManager.whiteColor,
                onTap: (){
                  openURL(url);
                },
                child: Row(
                  children: [
                    buildSpaceHorizontal(10),
                    const Icon(Icons.sports_basketball, color: ColorManager.secondaryColor, size: 15,),
                    buildSpaceHorizontal(15),
                    Text(
                      " $website ",
                      style: AppText.l1b,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
