import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/mainsection.dart';
import 'package:portfolio/constraints.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Container(
            decoration: BoxDecoration(
              color: const Color(0xff132744),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/splash.png",
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                // ignore: deprecated_member_use
                TyperAnimatedTextKit(
                    isRepeatingAnimation: true,
                    speed: const Duration(milliseconds: 50),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: kTextColor,
                    ),
                    text: const [
                      " Akter Hossain",
                      " Flutter Developer",
                    ]),
              ],
            ),
          ),
          nextScreen: const MainPage(),
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: k2PrimaryColor,
          // pageTransitionType: PageTransitionType.scale,
        ));
  }
}
