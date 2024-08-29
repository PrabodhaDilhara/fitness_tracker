import 'package:flutter/material.dart';

class Responsive {
  //method to checck weather the device is a mobile
  static bool isMobole(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  //methode tocheck weather the device is a tablet

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  //methode tocheck weather the device is a desktop

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
