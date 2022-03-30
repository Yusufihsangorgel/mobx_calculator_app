import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mobx_calculator_app/pages/calculator/View/calculator_part.dart';
import 'package:page_transition/page_transition.dart';
part 'home_view.dart';

extension on HomeView {
  AnimatedSplashScreen animatedSplashScreen() {
    return AnimatedSplashScreen(
      splash: '[n]https://c.tenor.com/svlEgR8JDGoAAAAC/einstein-math.gif',
      splashIconSize: 500,
      nextScreen: CalculatorView(),
      splashTransition: SplashTransition.decoratedBoxTransition,
      pageTransitionType: PageTransitionType.leftToRight,
      duration: 2500,
    );
  }
}
