


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/heading_text.dart';
import 'package:my_portfolio/presentation/widgets/project_card.dart';
import 'package:my_portfolio/src/animations/bottom_animation.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/constants.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          Space.y!,
          const HeadingText(
            text: "\nGet in Touch with Me",
          ),
          Space.y!,
          const SubHeadingText(
            text: "Let's build something together \n\n",
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              spacing: AppDimensions.normalize(10),
              children: contactIcon.asMap().entries.map((e) => WidgetAnimator(
                child: ProjectCard(
                  projectIconData: e.value,
                  projectTitle: titles[e.key],
                  projectDescription: details[e.key],
                  conWidth: AppDimensions.normalize(60),
                  conHeight: AppDimensions.normalize(60),
                ),
              ))
                  .toList()),
        ],
      ),
    );
  }
}
