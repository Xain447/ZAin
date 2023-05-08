



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/scroll_controller.dart';
import 'package:my_portfolio/presentation/widgets/navbar_logo.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/helper/helper.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = Get.put(ScrollableController());

    return Drawer(
      child: Material(
        color: ColorManager.primaryColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSpaceVertical(MediaQuery.of(context).size.height * 0.03),

              const Divider(color: ColorManager.secondaryColor, height: 10,),
              buildSpaceVertical(MediaQuery.of(context).size.height * 0.02),
              const Center(
                child: NavBarLogo(),
              ),
              buildSpaceVertical(MediaQuery.of(context).size.height * 0.02),
              const Divider(color: ColorManager.secondaryColor, height: 10,),

              ...navbarNames.asMap().entries.map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    hoverColor: ColorManager.whiteColor,
                    onPressed: () {
                      scrollController.scrollMobile(e.key);
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(
                        drawerIcons[e.key],
                        color: ColorManager.secondaryColor,
                      ),
                      title: Text(
                        e.value,
                        style: AppText.l1,
                      ),
                    ),
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
