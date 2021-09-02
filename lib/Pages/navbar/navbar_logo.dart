import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';

class NavBarLogo extends StatelessWidget {
  final double height;

  const NavBarLogo({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "< ",
            style: TextStyle(
              fontSize: height,
              color: Colors.white,
            ),
          ),
          Text(
            "Akter Hossain",
            style: TextStyle(
              fontFamily: "Agustina",
              fontSize: height,
              color: kTextColor,
            ),
          ),
          Text(
            MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
            style: TextStyle(
              fontSize: height,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
