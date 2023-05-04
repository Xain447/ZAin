




import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/navbar_button.dart';
import 'package:my_portfolio/presentation/widgets/navbar_logo.dart';
import 'package:my_portfolio/src/animations/entrance_fader.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'package:universal_html/html.dart' as html;

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(),
      color: ColorManager.primaryColor,
      child: Row(
        children: [
          const NavBarLogo(),
          Space.xm!,
          ...navbarNames.asMap().entries.map((e) => NavBarButton(
              label: e.value,
              index: e.key,
            ),
          ),

          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: ColorManager.lightBlackColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                  color: ColorManager.primaryColor,
                ),
              ),
              onPressed: () {
                html.window.open( myResume, "pdf");
              },
              child: Padding(
                padding: Space.all(0.15, 0.25),
                child: Text(
                  'RESUME',
                  style: AppText.l1b,
                ),
              ),
            ),
          ),
          Space.x!,
        ],
      ),
    );
  }
}

class NavBarTablet extends StatelessWidget {
  final GlobalKey<ScaffoldState> sKey;
  const NavBarTablet({Key? key, required this.sKey}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.all(0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Space.x1!,

          IconButton(
            highlightColor: ColorManager.greyColor,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              sKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: ColorManager.secondaryColor,
              size: 30,
            ),
          ),
          // Space.xm!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}
