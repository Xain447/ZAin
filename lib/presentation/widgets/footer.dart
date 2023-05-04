


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Developed with 💙 in ",
            ),

            InkWell(
              onTap: () => openURL("https://github.com/Xain447/my_portfolio"),
              child: const Text(
                "Flutter",
                style: TextStyle(color: ColorManager.goldColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
