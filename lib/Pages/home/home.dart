import 'package:flutter/material.dart';
import 'package:portfolio/Pages/home/hom_desktop.dart';
import 'package:portfolio/Pages/home/home_mobile.dart';
import 'package:portfolio/Pages/home/home_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
      tablet: const HomeTab(),
      desktop: const HomeDesktop(),
    );
  }
}
