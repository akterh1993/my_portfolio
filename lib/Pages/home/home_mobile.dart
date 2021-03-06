import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/social_media_icon.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      color: k2PrimaryColor,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.25,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('assets/my.png', height: height * 0.65),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: TextStyle(
                          fontSize: height * 0.025,
                          color: kTextColor,
                          fontWeight: FontWeight.w200),
                    ),
                    Image.asset(
                      "assets/images/hi.gif",
                      height: height * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Akter Hossaion",
                  style: TextStyle(
                      fontSize: height * 0.055,
                      color: kTextColor,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Developer",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    // ignore: deprecated_member_use
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: const Duration(milliseconds: 50),
                        textStyle: TextStyle(
                            fontSize: height * 0.03,
                            color: kTextColor,
                            fontWeight: FontWeight.w200),
                        text: const [
                          " Flutter Developer",
                          " Technical Writer",
                          " UI/UX Enthusiast"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
