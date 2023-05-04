


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/scroll_controller.dart';
import 'package:my_portfolio/src/animations/entrance_fader.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class NavBarButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarButton({Key? key, required this.label, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = Get.put(ScrollableController());

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: Space.h!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: MaterialButton(
          // splashColor: Colors.white54,
          // highlightColor: Colors.white54,
          hoverColor: ColorManager.lightBlackColor,
          onPressed: () {
            scrollController.scroll(index);
          },
          child: Padding(
            padding: Space.all(0.1, 0.1),
            child: Text(
              label,
              style: AppText.l1,
            ),
          ),
        ),
      ),
    );
  }
}
