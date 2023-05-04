



import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/responsive.dart';
import 'package:my_portfolio/presentation/widgets/top_arrow.dart';
import 'package:my_portfolio/src/config/app.dart';
import 'package:my_portfolio/src/utils/color_manager.dart';
import 'widgets/body_widget.dart';
import 'widgets/mobile_drawer.dart';
import 'widgets/navbar.dart';


class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    App.init(context);
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: ColorManager.primaryColor,
      drawer: ResponsiveWidget.isTablet(context) || ResponsiveWidget.isMobile(context) ? const MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const BodyWidget(),
            const TopArrow(),
            ResponsiveWidget.isTablet(context) || ResponsiveWidget.isMobile(context) ? NavBarTablet(sKey: _scaffoldKey) : const NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
