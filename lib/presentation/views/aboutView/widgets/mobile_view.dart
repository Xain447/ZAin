


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/heading_text.dart';
import 'package:my_portfolio/presentation/widgets/tech_widget.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'package:universal_html/html.dart' as html;
import 'education_card.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h1,
      child: Column(
        children: [
          const HeadingText(
            text: '\nAbout Me',
          ),
          Space.y1!,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Container(
              padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who am I?',
                    style: AppText.b1!.copyWith(
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  Space.y1!,
                  Text(
                    aboutMeHeadline,
                    style: AppText.b1b!.copyWith(
                      fontFamily: 'Montserrat',
                      color: ColorManager.secondaryColor,
                    ),
                  ),
                  Space.y!,
                  Text(
                    aboutMeDetail,
                    style: AppText.b2!.copyWith(
                      height: 2,
                      letterSpacing: 1.1,
                      fontFamily: 'Montserrat',
                      fontSize: AppDimensions.normalize(5),
                      color: ColorManager.secondaryColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Space.y!,
                  Space.y!,
                  Text(
                    'Expertise I Have:',
                    style: AppText.b1!.copyWith(
                      color: ColorManager.whiteColor,
                      fontSize: AppDimensions.font(8),
                    ),
                  ),
                  Space.y!,
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 30,
                    runSpacing: 10,
                    children: kTools.map((e) => ToolTechWidget(
                      techName: e,
                    )).toList(),
                  ),
                  Space.y!,
                  Space.y!,
                  Space.y!,
                  Text(
                    'Education I Have Done:',
                    style: AppText.b1!.copyWith(
                      color: ColorManager.whiteColor,
                      fontSize: AppDimensions.font(8),
                    ),
                  ),
                  Space.y!,
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 60,
                    runSpacing: 20,
                    children: education.map((e) =>  EducationCard(
                        school: e['school'],
                        date: e['date'],
                        location: e['location'],
                        degree: e['degree']
                    )).toList(),
                  ),
                  Space.y!,
                  Space.y!,
                  Space.y!,
                  Text(
                    'Here you can get my Resume: ',
                    style: AppText.b1!.copyWith(
                      color: ColorManager.whiteColor,
                      fontSize: AppDimensions.font(8),
                    ),
                  ),
                  Space.y!,
                  SizedBox(
                    height: AppDimensions.normalize(13),
                    width: AppDimensions.normalize(40),
                    child: OutlinedButton(
                      onPressed: () => html.window.open( myResume, "pdf"),
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(ColorManager.secondaryColor),
                      ),
                      child: Text(
                        "Resume",
                        style: AppText.b1!.copyWith(
                          color: ColorManager.whiteColor,
                          fontSize: AppDimensions.font(8),
                        ),
                      ),
                    ),
                  ),
                  Space.y!,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
