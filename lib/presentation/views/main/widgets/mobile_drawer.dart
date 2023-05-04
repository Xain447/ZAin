



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/scroll_controller.dart';
import 'package:my_portfolio/presentation/widgets/navbar_logo.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = Get.put(ScrollableController());

    return Drawer(
      child: Material(
        color: ColorManager.secondaryColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Center(
                child: NavBarLogo(),
              ),

              const Divider(),

              const Divider(),
              ...navbarNames.asMap().entries.map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    hoverColor: ColorManager.goldColor,
                    onPressed: () {
                      scrollController.scrollMobile(e.key);
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(
                        navbarIcons[e.key],
                        color: ColorManager.orangeColor,
                      ),
                      title: Text(
                        e.value,
                        style: AppText.l1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: ColorManager.goldColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: ColorManager.greyColor)),
                  onPressed: () => openURL(myResume),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      'RESUME',
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
