import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/custom_btn.dart';
import 'package:portfolio/widget/custom_text_heading.dart';
import 'package:portfolio/widget/tools_tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nAbout Me"),
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 70,
            backgroundColor: kPrimaryColor,
            child: CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage(
                'assets/images/my.jpg',
                // height: height * 0.27,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: TextStyle(color: kPrimaryColor, fontSize: height * 0.028),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Text(
            "I'm Assar Developer, a Flutter developer, Web Android IOS",
            style: TextStyle(
              fontSize: height * 0.035,
              fontWeight: FontWeight.w400,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm a  have been developing mobile apps for over 2.5 years now. ",
            style: TextStyle(
              fontSize: height * 0.02,
              color: Colors.grey[500],
              height: 2.0,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: TextStyle(color: kPrimaryColor, fontSize: height * 0.018),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < kTools.length; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedCustomBtn(
                    btnText: "Resume",
                    onPressed: () {
                      launchURL(
                          "https://drive.google.com/file/d/1G3UFixwPA11BP688pb9TnrA0PS8rYGUs/view?usp=sharing");
                    }),
              ),
              Container(
                width: width * 0.05,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
