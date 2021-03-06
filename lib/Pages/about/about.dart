import 'package:flutter/material.dart';
import 'package:portfolio/Pages/about/desktop_about.dart';
import 'package:portfolio/Pages/about/mobile_about.dart';
import 'package:portfolio/Pages/about/tab_about.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AboutMobile(),
      tablet: const AboutTab(),
      desktop: const AboutDesktop(),
    );
  }
}
