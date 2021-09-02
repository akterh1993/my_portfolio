import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/custom_btn.dart';
import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // ignore: prefer_typing_uninitialized_variables
    var bottomWidget;
    // ignore: prefer_typing_uninitialized_variables
    var projectIconData;
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nPortfolio"),
          SizedBox(
            height: height * 0.4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int i) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                child: ProjectCard(
                  cardHeight: height * 0.4,
                  cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                  projectTitle: kProjectsTitles[i],
                  projectDescription: kProjectsDescriptions[i],
                  projectLink: kProjectsLinks[i],
                  backImage: kProjectsBanner[i],
                  projectIcon: "",
                  bottomWidget: bottomWidget,
                  projectIconData: projectIconData,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
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
