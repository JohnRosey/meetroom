import 'package:flutter/material.dart';

import '../../presentation/screens/deciderScreen/decider.screen.dart';
import '../../presentation/screens/homeScreen/home.screen.dart';
import '../../presentation/screens/loginScreen/login.screen.dart';
import '../../presentation/screens/navigationScreen/navigation.screen.dart';
import '../../presentation/screens/onBoardingScreen/on.boarding.screen.dart';
import '../../presentation/screens/signupScreen/signup.screen.dart';
import '../../presentation/screens/splashScreen/splash.screen.dart';


class AppRouter {
  static const String onboardingRoute = "/onboard";
  static const String splashRoute = "/splash";
  static const String deciderRoute = "/decider";
  static const String loginRoute = "/login";
  static const String signupRoute = "/signup";
  static const String navRoute = "/nav";

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        {
          return MaterialPageRoute(
            builder: (_) => SplashScreen(),
          );
        }
      case onboardingRoute:
        {
          return MaterialPageRoute(
            builder: (_) => OnBoardingScreen(),
          );
        }
      case deciderRoute:
        {
          return MaterialPageRoute(
            builder: (_) => DeciderScreen(),
          );
        }
      case loginRoute:
        {
          return MaterialPageRoute(
            builder: (_) => LoginScreen(),
          );
        }
      case signupRoute:
        {
          return MaterialPageRoute(
            builder: (_) => SignUpScreen(),
          );
        }
      case navRoute:
        {
          return MaterialPageRoute(
            builder: (_) => NavigationScreen(),
          );
        }
    }
    return null;
  }
}
