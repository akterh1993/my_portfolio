import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/adaptive_text.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.height * 0.075,
        fontWeight: FontWeight.w100,
        letterSpacing: 1.0,
        color: kTextColor,
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.w200,
        color: kTextColor,
      ),
    );
  }
}
