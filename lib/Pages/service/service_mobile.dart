import 'package:flutter/material.dart';
import 'package:portfolio/Pages/service/service_desktop.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/service_card.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nWhat I Do"),
        SizedBox(
          height: width < 450 ? height * 0.4 : height * 0.4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int i) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: ServiceCard(
                cardHeight: width < 450 ? height * 0.4 : height * 0.4,
                cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                serviceIcon: kServicesIcons[i],
                serviceTitle: kServicesTitles[i],
                serviceDescription: kServicesDescriptions[i],
                cardBack: ServiceCardBackWidget(
                  serviceTitle: kServicesTitles[i],
                  serviceDesc: kServicesDescriptions[i],
                  height: height,
                  width: width,
                ),
                serviceLink: '',
              ),
            ),
          ),
        )
      ],
    );
  }
}
