// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/widget/adaptive_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String projectIcon;
  final IconData projectIconData;
  final String projectTitle;
  final String projectDescription;
  final String projectLink;
  final double cardWidth;
  final double cardHeight;
  final String backImage;
  final Widget bottomWidget;

  const ProjectCard({
    Key? key,
    required this.backImage,
    required this.projectIcon,
    required this.projectLink,
    required this.cardHeight,
    required this.projectTitle,
    required this.projectDescription,
    required this.cardWidth,
    required this.projectIconData,
    required this.bottomWidget,
  }) : super(key: key);
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => launch(widget.projectLink),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: const Color(0xff132744),
          border: Border(
            bottom: isHover
                ? const BorderSide(
                    color: kPrimaryColor,
                    width: 3.0,
                  )
                : const BorderSide(
                    color: Colors.grey,
                  ),
          ),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: kPrimaryColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: k2PrimaryColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null
                    ? (width > 1135 || width < 950)
                        ? Image.asset(
                            widget.projectIcon,
                            height: height * 0.05,
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                widget.projectIcon,
                                height: height * 0.03,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                widget.projectTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: height * 0.015,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: kTextColor,
                                ),
                              ),
                            ],
                          )
                    : Container(),
                widget.projectIconData != null
                    ? Icon(
                        widget.projectIconData,
                        color: kPrimaryColor,
                        size: height * 0.1,
                      )
                    : Container(),
                (width > 1135 || width < 950)
                    ? SizedBox(
                        height: height * 0.02,
                      )
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? AdaptiveText(
                        widget.projectTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: height * 0.02,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w400,
                            color: kTextColor),
                      )
                    : Container(),
                SizedBox(
                  height: height * 0.01,
                ),
                AdaptiveText(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: height * 0.015,
                      letterSpacing: 2.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      height: width >= 600 ? 2.0 : 1.2),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                widget.bottomWidget,
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.backImage != null
                    ? Image.asset(widget.backImage)
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
