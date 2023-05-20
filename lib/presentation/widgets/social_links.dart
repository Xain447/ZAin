


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/responsive.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: socialIconURL.asMap().entries.map((e) =>
        Padding(
          padding: ResponsiveWidget.isMobile(context) ? Space.all(0.2, 0) : Space.h!,
          child: IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(12),
            icon: Image.network(
              e.value,
              color: ColorManager.secondaryColor,
              height: ResponsiveWidget.isMobile(context) ? AppDimensions.normalize(14) : null,
            ),
            iconSize: ResponsiveWidget.isMobile(context) ? AppDimensions.normalize(16) : AppDimensions.normalize(15),
            onPressed: () => openURL( socialLinks[e.key]),
            hoverColor: ColorManager.whiteColor,
          ),
        ),
      )
          .toList(),
    );
  }
}
