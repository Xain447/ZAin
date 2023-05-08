


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:my_portfolio/src/config/app_dimensions.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/config/typography.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';

import 'service_card_back.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const ServiceCard({Key? key, required this.serviceIcon, required this.serviceTitle,
    required this.serviceDescription,}) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
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
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.18,
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
          decoration: BoxDecoration(
            color: ColorManager.secondaryColor,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            boxShadow: isHover
                ? [
              BoxShadow(
                color: ColorManager.whiteColor.withAlpha(100),
                blurRadius: 12.0,
                offset: const Offset(0.0, 0.0),
              )
            ] : [
              BoxShadow(
                color: Colors.black.withAlpha(100),
                blurRadius: 12.0,
                offset: const Offset(0.0, 0.0),
              )
            ],
          ),
          child: ServiceCardBackWidget(
            serviceDesc: widget.serviceDescription,
            serviceTitle: widget.serviceTitle,
          ),
        ),
        // front: Container(
        //   width: AppDimensions.normalize(60),
        //   height: AppDimensions.normalize(60),
        //   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        //   decoration: BoxDecoration(
        //     color: ColorManager.whiteColor,
        //     borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        //     boxShadow: isHover
        //         ? [
        //       BoxShadow(
        //         color: ColorManager.whiteColor.withAlpha(100),
        //         blurRadius: 12.0,
        //         offset: const Offset(0.0, 0.0),
        //       )
        //     ] : [
        //       BoxShadow(
        //         color: Colors.black.withAlpha(100),
        //         blurRadius: 12.0,
        //         offset: const Offset(0.0, 0.0),
        //       )
        //     ],
        //   ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Image.asset(
        //         widget.serviceIcon,
        //         height: AppDimensions.normalize(30),
        //       ),
        //       Space.y1!,
        //       Text(
        //         widget.serviceTitle,
        //         textAlign: TextAlign.center,
        //       ),
        //     ],
        //   ),
        // ),
       front: SizedBox(
         height: MediaQuery.of(context).size.height * 0.3,
         width: MediaQuery.of(context).size.width * 0.18,
         child: Stack(
           children: [
             Positioned(
               bottom: MediaQuery.of(context).size.height * 0.0,
               child: Container(
                 height: MediaQuery.of(context).size.height * 0.22,
                 width: MediaQuery.of(context).size.width * 0.18,
                 padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                 decoration: BoxDecoration(
                   color: ColorManager.secondaryColor,
                   borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                   boxShadow: isHover
                       ? [
                     BoxShadow(
                       color: ColorManager.whiteColor.withAlpha(100),
                       blurRadius: 12.0,
                       offset: const Offset(0.0, 0.0),
                     )
                   ] : [
                     BoxShadow(
                       color: Colors.black.withAlpha(100),
                       blurRadius: 12.0,
                       offset: const Offset(0.0, 0.0),
                     )
                   ],
                 ),
                 child: Align(
                   alignment: Alignment.bottomCenter,
                   child: Text(widget.serviceTitle,
                     textAlign: TextAlign.center,
                     style: AppText.b1!.copyWith(
                       color: ColorManager.primaryColor,
                       fontSize: 22,
                       fontWeight: FontWeight.w500
                     ),
                   ),
                 ),
               ),
             ),
             Positioned(
               bottom: MediaQuery.of(context).size.height * 0.15,
               left: MediaQuery.of(context).size.width * 0.0,
               right: MediaQuery.of(context).size.width * 0.0,
               child: CircleAvatar(
                 radius: 60,
                 backgroundColor: ColorManager.primaryColor,
                 child: CircleAvatar(
                   radius: 40,
                   backgroundImage: AssetImage(widget.serviceIcon, ),
                   backgroundColor: Colors.transparent,
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
