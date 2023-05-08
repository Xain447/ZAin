


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/heading_text.dart';
import 'package:my_portfolio/src/animations/entrance_fader.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'service_card_front.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          Space.y!,
          Space.y!,
          Space.y!,
          const HeadingText(
            text: '\nMy Services',
          ),
          Space.y!,
          // Space.y!,
          // const SubHeadingText(
          //   text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          // ),
          Space.y!,
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("What I can do?",
                        style: AppText.b1!.copyWith(
                          color: ColorManager.whiteColor,
                        ),
                      ),
                      Space.y1!,
                      EntranceFader(
                        offset: const Offset(-10, 0),
                        delay: const Duration(seconds: 1),
                        duration: const Duration(milliseconds: 800),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.play_arrow_rounded,
                              color: ColorManager.secondaryColor,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [

                                TyperAnimatedText(
                                  ' iOS App Development',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                                TyperAnimatedText(
                                  ' Web App Development',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                                TyperAnimatedText(
                                  ' UI/UX Enthusiast',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                                TyperAnimatedText(
                                  ' Android App Development',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            ),
                          ],
                        ),
                      ),
                      Space.y1!,
                      Text(
                        "I may not to be perfect but surely I\'m of some use ...\n\nHere are some of my expertise.",
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.secondaryColor,
                        ),
                      ),
                    ],
                  )
              ),
              Flexible(
                  flex: 3,
                  child: Wrap(
                    spacing: width * 0.05,
                    runSpacing: height * 0.05,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: servicesIcons.asMap().entries.map((e) => ServiceCard(
                      serviceIcon: servicesIcons[e.key],
                      serviceTitle: servicesTitles[e.key],
                      serviceDescription:
                      servicesDescription[e.key],
                    ),
                    ).toList(),
                  )
              )
            ],
          ),

        ],
      ),
    );
  }
}
