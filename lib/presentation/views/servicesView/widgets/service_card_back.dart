



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/constants.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'package:my_portfolio/src/utils/values_manager.dart';

class ServiceCardBackWidget extends StatelessWidget {
  final String serviceDesc;
  final String serviceTitle;
  const ServiceCardBackWidget({Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          textAlign: TextAlign.justify,
          style: AppText.l1!.copyWith(fontSize: AppDimensions.font(6), color: ColorManager.primaryColor),
        ),
        Space.y1!,
        SizedBox(
          height: AppDimensions.normalize(12),
          width: AppDimensions.normalize(50),
          child: MaterialButton(
            color: ColorManager.secondaryColor,
            onPressed: () => showDialog(
                context: context,
                builder: (context) => buildDialog(context)),
            child: Text(
              'HIRE ME!',
              style: AppText.b2!.copyWith(
                color: ColorManager.primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }

  AlertDialog buildDialog(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Hire Me!",
        style: AppText.b2b,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Back"),
        )
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            height: 40.0,
            onPressed: () => openURL(
              'https://api.whatsapp.com/send?phone=923139844838',
            ),
            color: const Color(0xff13A800),
            elevation: ValuesManager.vm6,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.white,
                ),
                Space.x!,
                Text(
                  'WhatsApp',
                  style: AppText.l1!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Space.y1!,
          MaterialButton(
            height: 40.0,
            onPressed: () => openURL(
              'https://www.fiverr.com/zainkhan569/develop-android-and-ios-apps-using-flutter',
            ),
            color: const Color(0xff13A800),
            elevation: ValuesManager.vm6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: ValuesManager.vm10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/fiver.png',
                    height: 25.0,
                    color: Colors.white,
                  ),
                  Space.x!,
                  Text(
                    'Fiver',
                    style: AppText.l1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
