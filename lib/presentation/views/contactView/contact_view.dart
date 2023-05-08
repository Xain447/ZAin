


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/responsive.dart';
import 'widgets/desktop_view.dart';
import 'widgets/mobile_view.dart';
import 'widgets/tablet_view.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileView(),
      tablet: TabletView(),
      desktop: DesktopView(),
    );
  }
}