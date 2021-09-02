import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/animation/button_animation.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/adaptive_text.dart';
import 'package:portfolio/widget/custom_btn.dart';

import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/service_card.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nWhat I Do"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: WidgetAnimator(
                      child: ServiceCard(
                        cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                        cardHeight:
                            width < 1200 ? height * 0.37 : height * 0.35,
                        serviceIcon: kServicesIcons[index],
                        serviceTitle: kServicesTitles[index],
                        serviceDescription: kServicesDescriptions[index],
                        cardBack: ServiceCardBackWidget(
                            serviceTitle: kServicesTitles[index],
                            serviceDesc: kServicesDescriptions[index],
                            height: height,
                            width: width),
                        serviceLink: '',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int index = 3; index < kServicesIcons.length; index++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: WidgetAnimator(
                        child: ServiceCard(
                          cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                          cardHeight:
                              width < 1200 ? height * 0.37 : height * 0.35,
                          serviceLink: '',
                          serviceIcon: kServicesIcons[index],
                          serviceTitle: kServicesTitles[index],
                          serviceDescription: kServicesDescriptions[index],
                          cardBack: ServiceCardBackWidget(
                            serviceDesc: kServicesDescriptions[index],
                            serviceTitle: kServicesTitles[index],
                            height: height,
                            width: width,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;

  const ServiceCardBackWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.serviceDesc,
      required this.serviceTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AdaptiveText(
          serviceDesc,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kTextColor,
            fontSize: height * 0.015,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w400,
            height: width < 900 ? 1.5 : 1.8,
          ),
        ),
        const SizedBox(height: 25.0),
        MaterialButton(
          hoverColor: kPrimaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(color: kPrimaryColor)),
          onPressed: () {},
          child: const Text(
            "Details",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 250.0,
          height: 0.5,
          color: Colors.grey[100],
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 40.0,
          width: 150.0,
          child: MaterialButton(
            color: kPrimaryColor,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      backgroundColor: const Color(0xff132744),
                      title: const AdaptiveText(
                        "Hire Me!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32.0, color: kTextColor),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Back"))
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://www.facebook.com/akther.hossain.180/"),
                            btnColor: kPrimaryColor,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(FontAwesomeIcons.whatsapp,
                                    color: Colors.white),
                                SizedBox(width: 8.0),
                                Text(
                                  "WhatsApp",
                                  style: TextStyle(color: kTextColor),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://www.fiverr.com/assardeveloper"),
                            btnColor: kPrimaryColor,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 35.0,
                                  color: kTextColor,
                                ),
                                const SizedBox(width: 8.0),
                                const Text(
                                  "Upwork",
                                  style: TextStyle(color: kTextColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: const Text(
              "HIRE ME!",
              style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
