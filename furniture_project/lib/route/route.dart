import 'package:flutter/material.dart';
import 'package:furniture_project/view/credentialScreen/registerScreen.dart';
import 'package:furniture_project/view/splashScreen/splashscreen.dart';

const String splashScreen = 'splashscreen';
const String registerScreen = 'registerscreen';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    default:
      throw ('this route name does not exist');
  }
}
