


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/scroll_controller.dart';
import 'package:my_portfolio/src/animations/entrance_fader.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class TopArrow extends StatefulWidget {
  const TopArrow({Key? key}) : super(key: key);

  @override
  TopArrowState createState() => TopArrowState();
}

class TopArrowState extends State<TopArrow> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollController = Get.put(ScrollableController());

    return Positioned(
      bottom: AppDimensions.normalize(20),
      right: -7,
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: Padding(
          padding:
          EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () => scrollController.scroll(0),
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
                  decoration: BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                    ),
                    boxShadow: isHover ? [
                      const BoxShadow(
                        blurRadius: 12.0,
                        offset: Offset(2.0, 3.0),
                      )
                    ] : [],
                  ),
                  child: Icon(
                    Icons.arrow_drop_up_outlined,
                    color: ColorManager.primaryColor,
                    size: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
