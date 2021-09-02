import 'package:flutter/material.dart';
import 'package:portfolio/animation/button_animation.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/custom_btn.dart';
import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/project_card.dart';

class PortfolioDesktop extends StatelessWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nPortfolio"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                // ignore: prefer_typing_uninitialized_variables
                var bottomWidget;
                // ignore: prefer_typing_uninitialized_variables
                var projectIconData;
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: kProjectsBanner[index],
                    projectIcon: "",
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                    bottomWidget: bottomWidget,
                    projectIconData: projectIconData,
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          OutlinedCustomBtn(
              btnText: "See More",
              onPressed: () {
                launchURL("https://www.youtube.com/c/FlutterAppdeveloper");
              })
        ],
      ),
    );
  }
}
