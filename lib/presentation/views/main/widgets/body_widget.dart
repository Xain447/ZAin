


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/scroll_controller.dart';
import 'package:my_portfolio/src/constants.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = Get.put(ScrollableController());

    return ListView.builder(
      controller: scrollController.controller,
      itemCount: views.length,
      itemBuilder: (context, index) => views[index],
    );

  }
}
