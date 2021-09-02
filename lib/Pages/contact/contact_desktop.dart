import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  get i => null;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // ignore: prefer_typing_uninitialized_variables
    var bottomWidget;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nGet in Touch"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              kContactIcons.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ProjectCard(
                  backImage: kProjectsBanner[i],
                  bottomWidget: bottomWidget,
                  projectIcon: kServicesIcons[i],
                  projectLink: kSocialLinks[i],
                  cardHeight: height * 0.3,
                  projectTitle: kContactTitles[i],
                  projectDescription: kContactDetails[i],
                  cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                  projectIconData: kContactIcons[i],
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 25.0,
          // ),
          // OutlinedCustomBtn(
          //     btnText: "Let's Work Together",
          //     onPressed: () => Navigator.pushNamed(context, '/workTogether')),
        ],
      ),
    );
  }
}
