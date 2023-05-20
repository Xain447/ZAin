


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/heading_text.dart';
import 'package:my_portfolio/src/config/space.dart';
import 'package:my_portfolio/src/helper/helper.dart';
import 'clipper_left.dart';
import 'clipper_right.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: Space.h,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Space.y1!,
          const HeadingText(
            text: '\nProfessional Experience',
          ),
          Space.y1!,
          Space.y1!,
          Space.y1!,
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children:[
                    Flexible(flex: 3, child: Container(),),
                    const ClipperRightWidget(
                      title: "Mobile App Developer",
                      company: "AutoCoin Cars",
                      date: "Jan 2023 - Present",
                      location: "Islamabad, Pakistan",
                      url: "https://www.autocoincars.com/",
                      website: "www.autocoincars.com",
                    ),
                    Flexible(flex: 2, child: Container(),),
                  ],
                ),
                buildSpaceVertical(height * 0.02),
                Row(
                  children:[
                    Flexible(flex: 2, child: Container(),),
                    const ClipperLeftWidget(
                      title: "Mobile App Developer",
                      company: "E&SED, KPK Secretariat",
                      date: "Jan 2022 - Dec 2022",
                      location: "Peshawar, Pakistan",
                      url: "https://kpese.gov.pk/",
                      website: "www.kpese.gov.pk",
                    ),
                    Flexible(flex: 4, child: Container(),),
                  ],
                ),
                buildSpaceVertical(height * 0.02),
                Row(
                  children:[
                    Flexible(flex: 3, child: Container(),),
                    const ClipperRightWidget(
                      title: "Mobile App Developer",
                      company: "EWIGSOL Solutions",
                      date: "Feb 2022 - Aug 2022",
                      location: "Lahore (Remotely), Pakistan",
                      url: "https://ewigsol.com/",
                      website: "www.ewigsol.com",
                    ),
                    Flexible(flex: 2, child: Container(),),
                  ],
                ),
                buildSpaceVertical(height * 0.02),
                Row(
                  children:[
                    Flexible(flex: 2, child: Container(),),
                    const ClipperLeftWidget(
                      title: "Mobile App Developer",
                      company: "Last Wave Technology",
                      date: "Sep 2020 – Dec 2021",
                      location: "Peshawar, Pakistan",
                      url: "https://lastwavetechnology.com/",
                      website: "www.lastwavetechnology.com",
                    ),
                    Flexible(flex: 4, child: Container(),),
                  ],
                ),
                buildSpaceVertical(height * 0.02),
                Row(
                  children:[
                    Flexible(flex: 3, child: Container(),),
                    const ClipperRightWidget(
                      title: "Internee",
                      company: "Soft Tech",
                      date: "Mar 2019 – Aug 2020",
                      location: "Peshawar, Pakistan",
                      url: "https://www.facebook.com/softechiot/",
                      website: "www.softechiot.com",
                    ),
                    Flexible(flex: 2, child: Container(),),
                  ],
                ),
                buildSpaceVertical(height * 0.02),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
