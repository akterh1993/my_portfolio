import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;
  final String serviceLink;
  final double cardWidth;
  final double cardHeight;
  final Widget cardBack;

  const ServiceCard(
      {Key? key,
      required this.serviceIcon,
      required this.serviceTitle,
      required this.serviceDescription,
      required this.serviceLink,
      required this.cardWidth,
      required this.cardHeight,
      required this.cardBack})
      : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
          cardKey.currentState!.toggleCard();
        } else {
          setState(() {
            isHover = false;
          });
          cardKey.currentState!.toggleCard();
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
            width: widget.cardWidth,
            height: widget.cardHeight,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color: const Color(0xff132744),
              border: Border(
                bottom: isHover
                    ? const BorderSide(
                        color: kPrimaryColor,
                        width: 3.0,
                      )
                    : const BorderSide(),
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
            child: widget.cardBack),
        front: Container(
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
                  : const BorderSide(),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: height * 0.125,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                widget.serviceTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height * 0.022,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
