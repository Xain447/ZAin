


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/helper/helper.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class EducationCard extends StatelessWidget {
  final String school, date, location, degree;
  const EducationCard({Key? key, required this.school,
    required this.date, required this.location, required this.degree,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 17, right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(color: ColorManager.whiteColor))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildSpaceVertical(10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildSpaceHorizontal(10),
              const Icon(Icons.school, color: ColorManager.whiteColor, size: 15,),
              buildSpaceHorizontal(15),
              Text(
                " $school ",
                style: AppText.l1b!.copyWith(
                    fontSize: AppDimensions.font(6),
                    color: ColorManager.whiteColor
                ),
              ),
            ],
          ),
          buildSpaceVertical(10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildSpaceHorizontal(10),
              const Icon(Icons.book, color: ColorManager.secondaryColor, size: 15,),
              buildSpaceHorizontal(15),
              Text(
                " $degree ",
                style: AppText.l1b!.copyWith(
                    fontSize: AppDimensions.font(6),
                    color: ColorManager.secondaryColor
                ),
              ),
            ],
          ),
          buildSpaceVertical(10),
          Row(
            mainAxisSize: MainAxisSize.min,
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
            mainAxisSize: MainAxisSize.min,
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
        ],
      ),
    );
  }
}
