


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "</ ",
          style: AppText.b1,
        ),
        Text(
          "ZAin ",
          style: AppText.b1b!.copyWith(
            fontFamily: 'Agustina',
          ),
        ),
        const Icon(Icons.computer, size: 30, color: ColorManager.secondaryColor),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: AppText.b1,
        )
      ],
    );
  }
}
