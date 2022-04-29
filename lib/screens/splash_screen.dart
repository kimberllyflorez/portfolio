import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';
import 'package:portafolio_kimberlly/repository/firebase_database_repository.dart';
import 'package:portafolio_kimberlly/screens/home_screen.dart';

import 'dart:math' as math;

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseDatabaseRepository().getProjectsData();

    return AnimatedSplashScreen(
        duration: 3500,
        splashIconSize: MediaQuery.of(context).size.height * 0.9,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'kimberlly ',
                      style: TextStyle(
                        fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      ' florez',
                      style: TextStyle(
                          fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 50),
              alignment: Alignment.bottomCenter,
              child: Text(
                'version: 1.0 ',
                style: TextStyle(fontSize: 30, color: Palette.title),
              ),
            ),
          ],
        ),
        nextScreen: const HomeScreen(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Palette.backgroundColor);
  }
}

