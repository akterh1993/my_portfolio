import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // ignore: prefer_typing_uninitialized_variables
    var bottomWidget;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nGet in Touch"),
        SizedBox(
          height: height * 0.3,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int i) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
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
                )),
          ),
        ),
      ],
    );
  }
}
