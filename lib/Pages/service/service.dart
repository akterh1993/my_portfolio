import 'package:flutter/material.dart';
import 'package:portfolio/Pages/service/service_desktop.dart';
import 'package:portfolio/Pages/service/service_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ServiceMobile(),
      tablet: const ServiceMobile(),
      desktop: const ServiceDesktop(),
    );
  }
}
