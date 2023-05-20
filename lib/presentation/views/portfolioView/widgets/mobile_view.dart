


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/heading_text.dart';
import 'package:my_portfolio/presentation/widgets/project_card.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          Space.y2!,
          Space.y2!,
          Space.y2!,
          const HeadingText(
            text: "\nPortfolio",
          ),
          Space.y1!,
          const SubHeadingText(
            text: "Here are few samples of my previous work :)\n\n",
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            spacing: AppDimensions.normalize(5),
            children: banners.asMap().entries.map((e) => ProjectCard(
              banner: e.value,
              projectIcon: icons[e.key],
              projectLink: links[e.key],
              projectTitle: projectTitle[e.key],
              projectDescription: description[e.key],
            ),
            ).toList(),
          ),
          Space.y2!,
          SizedBox(
            height: AppDimensions.normalize(14),
            width: AppDimensions.normalize(50),
            child: OutlinedButton(
              onPressed: () => openURL("https://github.com/Xain447"),
              child: Text(
                'See More',
                style: AppText.l1b,
              ),
            ),
          )
        ],
      ),
    );
  }
}
