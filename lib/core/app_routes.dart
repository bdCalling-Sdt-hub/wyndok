import 'package:get/get.dart';
import 'package:wyndok/view/screen/no_role/onboarding_screen/onboarding_screen.dart';

import '../view/screen/no_role/auth/sign up/sign_up_screen.dart';
import '../view/screen/no_role/splash/splash_screen.dart';
import '../view/screen/test_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String splash = "/splash_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";

  static List<GetPage> routes = [
    GetPage(name: test, page: () => TestScreen()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: onboarding, page: () => OnboardingScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
  ];
}
