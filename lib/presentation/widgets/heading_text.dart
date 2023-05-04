


import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/typography.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.h1!.copyWith(
        fontFamily: 'Montserrat',
      ),
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String text;
  const SubHeadingText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.l1!.copyWith(
        fontFamily: 'Montserrat',
      ),
    );
  }
}
