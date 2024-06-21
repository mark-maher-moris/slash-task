import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
}
