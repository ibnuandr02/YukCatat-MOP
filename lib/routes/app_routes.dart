import 'package:flutter/material.dart';
import '../splash_screen_two_screen.dart'; // Ensure this path is correct

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreenTwoScreen = 'splash_screen_two_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreenTwoScreen: (context) => const SplashScreenTwoScreen(), // Use 'const' here
    initialRoute: (context) => const SplashScreenTwoScreen(), // And here as well
  };
}
