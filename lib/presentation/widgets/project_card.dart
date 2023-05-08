


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({Key? key, this.banner, this.projectIcon, this.projectLink, this.projectIconData,
    required this.projectTitle, required this.projectDescription,}) : super(key: key);

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.projectLink == null ? () {} : () => openURL( widget.projectLink!),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        margin: Space.h,
        padding: Space.all(),
        width: AppDimensions.normalize(150),
        height: AppDimensions.normalize(90),
        decoration: BoxDecoration(
          color: ColorManager.primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isHover ? [
            const BoxShadow(
              color: ColorManager.whiteColor,
              blurRadius: 12.0,
              offset: Offset(0.0, 0.0),
            )
          ] :
          [
            BoxShadow(
              color: ColorManager.blackColor.withAlpha(100),
              blurRadius: 12.0,
              offset: const Offset(0.0, 0.0),
            )
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null ? (width > 1135 || width < 950) ?
                Image.asset( widget.projectIcon!, height: height * 0.05) :
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.projectIcon!,
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      widget.projectTitle,
                      style: AppText.b2b,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ) :
                Container(),

                widget.projectIconData != null ?
                Icon(
                  widget.projectIconData,
                  color: ColorManager.blueColor,
                  size: height * 0.1,
                ) : Container(),

                (width > 1135 || width < 950) ?
                SizedBox( height: height * 0.02 ) : const SizedBox(),

                (width > 1135 || width < 950) ?
                Text(
                  widget.projectTitle,
                  style: AppText.b2b,
                  textAlign: TextAlign.center,
                ) : Container(),

                SizedBox(
                  height: height * 0.01,
                ),

                Text(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: height * 0.01,
                ),

              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.banner != null ?
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(widget.banner!)) : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
